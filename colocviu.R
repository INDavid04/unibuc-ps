# PS | COLOCVIU #1 | 2026-01-05 | 22:15 - 

###

# 1A. O persoana cumpără câte o acţiune de la fiecare din firmele X şi Y. Probabilitatea ca valoarea acţiunii X să crească ziua următoare este 0.65 , probabilitatea ca valoarea acţiunii Y să crească este 0.55, iar probabilitatea ca ambele să crească este 0.25. Determinati:

# a) Probabilitatea ca cel puţin valoarea uneia dintre acţiuni să crească ȋn ziua următoare

# b) Probabilitatea ca doar valoarea uneia dintre acţiuni să crească ȋn ziua următoare

# c) Construiți ȋn R un exemplu de simulare care să aproximeze probabilitățile de la a) și b)

###

n <- 10^5

pA <- 0.65 # evenimentul ca valoarea acţiunii X să crească ziua următoare
pB <- 0.55 # evenimentul ca valoarea acţiunii Y să crească ziua următoare
pC <- 0.25 # # evenimentul ca valoarea acţiunilor X, Y să crească ziua următoare

# Genereaza A
A <- runif(n) < pA

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






