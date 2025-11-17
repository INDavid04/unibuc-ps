####################################################################
# "prob_alternativ.R" — înlocuitor compatibil pentru pachetul prob #
####################################################################

# Spațiu pentru aruncarea a n zaruri
rolldie <- function(n = 1, sides = 6) {
  expand.grid(rep(list(1:sides), n))
}

# Setul complet de 52 de cărți
cards <- function() {
  valori <- c("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K")
  suite <- c("Spade", "Heart", "Club", "Diamond")
  expand.grid(rank = valori, suit = suite)
}

# Generare combinații dintr-o urnă (echivalent urnsamples)
urnsamples <- function(x, size, replace = FALSE, ordered = FALSE) {
  if (replace) {
    expand.grid(rep(list(x), size))
  } else if (ordered) {
    expand.grid(rep(list(x), size))
  } else {
    combn(x, size, simplify = FALSE)
  }
}

# Creează un spațiu de probabilitate (adaugă coloana "prob")
makespace <- function(events) {
  df <- as.data.frame(events)
  df$prob <- 1 / nrow(df)
  df
}

# Calculează probabilități (echivalent Prob())
Prob <- function(space, condition = NULL) {
  if (is.null(condition)) {
    return(1)
  } else {
    subset_space <- subset(space, eval(substitute(condition), space))
    return(sum(subset_space$prob))
  }
}
