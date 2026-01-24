library(shiny)
library(ggplot2)

# UI
ui <- fluidPage(
  titlePanel("Exercițiul 3: Cereri, Retry-uri și Evenimente"),
  sidebarLayout(
    sidebarPanel(
      h4("Parametri Simulare"),
      sliderInput("n_sim", "Număr utilizatori:", 1000, 10000, 5000),
      sliderInput("p_succes", "Probabilitate succes (per încercare):", 0.1, 0.9, 0.7),
      sliderInput("max_retry", "Nr. Maxim retry:", 1, 10, 3),
      hr(),
      h4("Praguri Evenimente"),
      sliderInput("t0_SLA", "Prag Timp (t0) - SLA:", 0.5, 10.0, 2.0, step = 0.5),
      sliderInput("n0_at", "Prag Încercări (n0) - Eficiență:", 1, 5, 1)
    ),
    mainPanel(
      tabsetPanel(
        tabPanel(
          "Simulare",
          fluidRow(
            column(6, plotOutput("distrTimp")),
            column(6, plotOutput("distrIncercari"))
          ),
          helpText("Histograma timpului total (T) și a numărului de încercări (N).")
        ),
        tabPanel(
          "Probabilități (3.a)",
          tableOutput("tabProb"),
          helpText("Probabilitățile empirice calculate prin numărarea cazurilor favorabile / total cazuri.")
        ),
        tabPanel(
          "Verificare Formule (3.b)",
          verbatimTextOutput("verificareFormula"),
          helpText("Verificăm egalitatea P(A ∪ D) = P(A) + P(D) - P(A ∩ D).")
        ),
        tabPanel(
          "Explicatii (3.c)",
          wellPanel(
            h4("De ce probabilitatea empirică aproximează bine probabilitatea teoretică?"),
            p("Aceasta este o aplicație directă a ", strong("Legii Numerelor Mari (Law of Large Numbers)"), "."),
            p("Legea spune că media eșantionului (frecvența relativă a evenimentului) converge probabilistic
                     către media populației (probabilitate teoretică) atunci când dimensiunea eșantionului (n) crește."),
            p("Astfel, cu n=5000 sau n=10000 simulări, estimarea noastră este foarte precisă.")
          )
        )
      )
    )
  )
)

# SERVER
server <- function(input, output) {
  # Logica de simulare
  sim_data <- reactive({
    n <- input$n_sim
    max_ret <- input$max_retry
    p <- input$p_succes

    # Vectori
    T_total <- numeric(n)
    I_final <- numeric(n)
    N_total <- numeric(n)

    # Simulare Monte Carlo
    for (i in 1:n) {
      att <- 0
      timp <- 0
      succes <- FALSE

      while (att < max_ret && !succes) {
        att <- att + 1
        # Timp de răspuns pentru o încercare (Exponential cu rate=2 => medie 0.5s)
        timp <- timp + rexp(1, rate = 2)

        if (runif(1) < p) {
          succes <- TRUE
        } else {
          # Backoff penalty (0.2s) dacă eșuează
          timp <- timp + 0.2
        }
      }

      T_total[i] <- timp
      I_final[i] <- as.numeric(succes)
      N_total[i] <- att
    }

    data.frame(T = T_total, I = I_final, N = N_total)
  })

  # 3.a) Calcul Probabilități
  output$tabProb <- renderTable({
    df <- sim_data()
    t0 <- input$t0_SLA
    n0 <- input$n0_at

    A <- df$I == 1 # Succes
    B <- df$T <= t0 # SLA Met
    C <- df$N <= n0 # Efficiency
    D <- df$N > 1 | (df$N == 1 & df$I == 0) # Cel puțin un eșec (adică nu a reușit din prima sau a eșuat total)
    # Mai precis: D = {cel puțin un eșec}. Dacă N=1 și I=1 => 0 eșecuri. Dacă N=1 și I=0 => 1 eșec. Dacă N > 1 => a avut cel puțin un eșec la n-1.

    # Corecție interpretare D: "Cel puțin un eșec"
    # Dacă I=1 și N=1, nu a avut eșecuri.
    # În orice alt caz (I=0 sau N>1), a avut cel puțin unul.
    D_logic <- !(df$N == 1 & df$I == 1)

    data.frame(
      Simbol = c("P(A)", "P(B)", "P(C)", "P(A ∩ B)", "P(A ∪ D)"),
      Eveniment = c("Succes Final", "Timp <= t0 (SLA)", "Încercări <= n0", "Succes rapid", "Succes SAU Eșecuri"),
      Probabilitate = c(mean(A), mean(B), mean(C), mean(A & B), mean(A | D_logic))
    )
  })

  # 3.b) Verificare Formula
  output$verificareFormula <- renderText({
    df <- sim_data()

    A <- df$I == 1
    # D: Cel puțin un eșec
    D <- !(df$N == 1 & df$I == 1)

    # P(A U D)
    p_reun_empiric <- mean(A | D)

    # Formula: P(A) + P(D) - P(A n D)
    p_A <- mean(A)
    p_D <- mean(D)
    p_inter <- mean(A & D)

    p_formula <- p_A + p_D - p_inter

    paste0(
      "Verificăm: P(A ∪ D) = P(A) + P(D) - P(A ∩ D)\n\n",
      "P(A ∪ D) [Empiric]:   ", round(p_reun_empiric, 6), "\n",
      "Calcul Formula:       ", round(p_formula, 6), "\n",
      "  -> P(A) = ", round(p_A, 4), "\n",
      "  -> P(D) = ", round(p_D, 4), "\n",
      "  -> P(A ∩ D) = ", round(p_inter, 4), "\n\n",
      "Diferența: ", abs(p_reun_empiric - p_formula), "\n",
      "Concluzie: Formula este verificată numeric!"
    )
  })

  # Grafice
  output$distrTimp <- renderPlot({
    hist(sim_data()$T, col = "lightblue", main = "Distribuția Timpului Total (T)", xlab = "Secunde (s)")
    abline(v = input$t0_SLA, col = "red", lwd = 2, lty = 2)
  })

  output$distrIncercari <- renderPlot({
    barplot(table(sim_data()$N), col = "orange", main = "Frecvența nr. încercări (N)", xlab = "Nr. Încercări")
    abline(v = input$n0_at, col = "blue", lwd = 2, lty = 2)
  })
}

shinyApp(ui, server)
