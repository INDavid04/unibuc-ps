########################################################################################

# PS | COLOCVIU #1 | 2026-01-05 | 22:15 - 

########################################################################################

# 1A. O persoana cumpără câte o acţiune de la fiecare din firmele X şi Y. Probabilitatea ca valoarea acţiunii X să crească ziua următoare este 0.65 , probabilitatea ca valoarea acţiunii Y să crească este 0.55, iar probabilitatea ca ambele să crească este 0.25. 
# Determinati:
# a) Probabilitatea ca cel puţin valoarea uneia dintre acţiuni să crească ȋn ziua următoare
# b) Probabilitatea ca doar valoarea uneia dintre acţiuni să crească ȋn ziua următoare
# c) Construiți ȋn R un exemplu de simulare care să aproximeze probabilitățile de la a) și b)

########################################################################################

n <- 10^5

pA <- 0.65 # evenimentul ca valoarea acţiunii X să crească ziua următoare
pB <- 0.55 # evenimentul ca valoarea acţiunii Y să crească ziua următoare
pC <- 0.25 # # evenimentul ca valoarea acţiunilor X, Y să crească ziua următoare

# Genereaza A
A <- runif(n) < pA

# Vezi ce afiseaza p_a si a
n <- 10
p_a <- 0.10
a <- runif(n) < p_a
cat("p_a: ", p_a, "\na: ", a, "\n")

# Genereaza B | A
p_B_conditionat_de_A <- pC / pA
p_B_neconditionat_de_A <- (pB - pC) / (1 - pA)
B <- rep(FALSE, n)
B[A] = runif(sum(A)) < p_B_conditionat_de_A
B[!A] = runif(sum(!A)) < p_B_neconditionat_de_A

# Calculeaza frecventele pentru a) si b)
cel_putin_una <- A | B
doar_una <- (A & !B) | (!A & B)

# Afiseaza rezultatele

cat("Probabilitatea ca cel puţin valoarea uneia dintre acţiuni să crească ȋn ziua următoare este ", mean(cel_putin_una), "\n")
cat("Probabilitatea ca doar valoarea uneia dintre acţiuni să crească ȋn ziua următoare este ", mean(doar_una), "\n")

########################################################################################

# 1B. Un student ȋncearcă să ghicească prenumele unei colege noi şi nu se opreşte până
# când nu reuşeşte. Se ştie că probabilitatea de succes de la fiecare ȋncercare este p=0.1.
# Determinaţi:
# a) Repartiţia v.a. X ce descrie experimentul de mai sus.
# b) 𝑃(𝑋 = 3), 𝑃 (𝑋 >= 5/3), P(X < 10/3), P(X <= 2 / X > 0.3)
# c) F(7/3) unde F este functia de repartitie a variabilei aleatoare X  
# d) E(X), Var(X)
# e) Ilustrați prin simulare ȋn R experimentul din ipoteză și arătați ca media empirică
# tinde la media teoretică.

########################################################################################

# Seteaza numarul de simulari si probabilitatea de succes la fiecare incercare
n <- 10^5
p <- 0.1

# Genereaza valorile: numar de incercari = numarul de esecuri + 1 (1 adica reusita)
simulari <- rgeom(n, p) + 1

# Calculeaza media empirica
media_empirica <- mean(simulari)
# cat(media_empirica)

# Calculeaza media teoretica
media_teoretica <- 1/p
# cat(media_teoretica)

# Afiseaza rezultatele
cat("Media empirica este ", media_empirica, "\n")
cat("Media teoretica este ", media_teoretica, "\n")
