#######################################
# Test la Probabilități și Statistică #
#######################################

#################
# Organizatoric #
#################

# Nume si prenume: Irimia David
# Grupa: 241

#####
# I #
#####

# I. Se consideră variabila aleatoare discretă (𝑋, 𝑌) cu distribuția comună dată în tabelul de mai jos:
#   𝑌 ∖ 𝑋   0       1       2
#   -1        0.10    0.10    0.05
#   0         0.10    0.20    0.15
#   1         0.05    0.15    0.10

############
# Cerințe: #
############

#######################
# Pe foaia de examen: #
#######################

# 1. Determinați distribuțiile marginale ale lui 𝑋 și 𝑌.
# X: ((0, 1, 2), (0.25, 0.45, 0.30))
# Y: ((-1, 0, 1), (0.25, 0.45, 0.30))

# 2. Calculați 𝔼[𝑋], 𝔼[𝑌], Var(𝑋), Var(𝑌).
# E[X] = 1.05
# E[Y] = 0.05
# Var(X) = 0.5475
# Var(Y) = 0.5475

# 3. Calculați Cov(𝑋, 𝑌) și coeficientul de corelație 𝜌𝑋,𝑌.
# Cov(X, Y) = 0.0975
# 𝜌𝑋,𝑌 = 0.178082192

# 4. Stabiliți dacă 𝑋 și 𝑌 sunt independente (justificați).
# Nu sunt deoarece pi11 != p1q1

# 5. Calculați 𝑃(𝑋 + 𝑌 ≤ 0).
# 𝑃(𝑋 + 𝑌 ≤ 0) = 0.3

# 6. Determinați distribuția variabilei 𝑍 = 𝑋 + 𝑌 și calculați 𝔼[𝑍].
# Z: ((-1, 0, 1, 2, 3), (0.0625, 0.225, 0.3525, 0.27, 0.09))
# E[Z] = 1.1

################
# In R Studio: #
################

# 7. Simulați 10^6 observații din distribuția (𝑋, 𝑌). 

n <- 10^6

x_1 <- 0
x_2 <- 1
x_3 <- 2

y_1 <- -1
y_2 <- 0
y_3 <- 1

pi_1_1 <- 0.10
pi_1_2 <- 0.10
pi_1_3 <- 0.05
pi_2_1 <- 0.10
pi_2_2 <- 0.20
pi_2_3 <- 0.15
pi_3_1 <- 0.05
pi_3_2 <- 0.15
pi_3_3 <- 0.10

res_1_1 <- runif(n) < pi_1_1
res_1_2 <- runif(n) < pi_1_2
res_1_3 <- runif(n) < pi_1_3
res_2_1 <- runif(n) < pi_2_1
res_2_2 <- runif(n) < pi_2_2
res_2_3 <- runif(n) < pi_2_3
res_3_1 <- runif(n) < pi_3_1
res_3_2 <- runif(n) < pi_3_2
res_3_3 <- runif(n) < pi_3_3

cat("\n")
cat("#################")
cat("# X = 0; Y = -1 #")
cat("#################")
cat("\n")
cat(res_1_1)

cat("\n")
cat("################")
cat("# X = 0; Y = 0 #")
cat("################")
cat("\n")
cat(res_1_2)

cat("\n")
cat("################")
cat("# X = 0; Y = 1 #")
cat("################")
cat("\n")
cat(res_1_3)

cat("\n")
cat("#################")
cat("# X = 1; Y = -1 #")
cat("#################")
cat("\n")
cat(res_2_1)

cat("\n")
cat("################")
cat("# X = 1; Y = 0 #")
cat("################")
cat("\n")
cat(res_2_2)

cat("\n")
cat("################")
cat("# X = 1; Y = 1 #")
cat("################")
cat("\n")
cat(res_2_3)

cat("\n")
cat("#################")
cat("# X = 2; Y = -1 #")
cat("#################")
cat("\n")
cat(res_3_1)

cat("\n")
cat("################")
cat("# X = 2; Y = 0 #")
cat("################")
cat("\n")
cat(res_3_2)

cat("\n")
cat("################")
cat("# X = 2; Y = 1 #")
cat("################")
cat("\n")
cat(res_3_3)

# 8. Estimați prin simulare probabilitatea 𝑃(𝑋 + 𝑌 ≤ 2)

# 9. Reprezentați grafic histogramele pentru 𝑋, 𝑌, 𝑍 = 𝑋 + 𝑌.

######
# IV #
######

# IV. Un server primește pachete de date de la un nod îndepărtat. Fiecare pachet transmis este corupt cu probabilitatea 𝑝 = 0.02, independent de celelalte pachete. Transmisia este monitorizată în blocuri de câte 𝑛 = 100 pachete consecutive.
# A. Definim variabila aleatoare: 𝑋 = numărul de pachete corupte într-un bloc de 100.
# Cerințe:

# 1.Determinați distribuția lui 𝑋.
# X" ((1, 2, 3, ..., 100), (0.02, 0.98*0.02, 0.98^2*0.02, ..., 0.98^99*0.02))

# 2.Calculați 𝑃(𝑋 = 0), 𝑃(𝑋 ≤ 2) ș𝑖 𝑃(𝑋 ≥ 5)
# 𝑃(𝑋 = 0) = 0
# 𝑃(𝑋 ≤ 2) = 0.0396
# 𝑃(𝑋 ≥ 5) = 0.92236816

# 3.Calculați 𝐸(𝑋) și Var(𝑋).Interpretați 𝐸(𝑋) în contextul problemei.
# E[X] = 50
# Var(X) = 2450

# B. Sistemul declanșează o alarmă dacă într-un bloc apar mai mult de 4 pachete corupte.
# 4. Calculați probabilitatea ca alarma să fie declanșată. Discutați dacă acest prag este rezonabil raportat la 𝐸(𝑋).
# C. Serverul oprește transmisia imediat ce apare un pachet corupt și o repornește după resetare.
# Definim 𝑌 = numărul de pachete corecte primate până la apariția primului pachet corrupt.
# 5. Identificați distribuția lui 𝑌
# 6. Calculați: 𝑃(𝑌 ≥ 50) ș𝑖 𝑃(𝑌 ≤ 10)
# 7. Calculați 𝐸(𝑌) și Var(𝑌). Interpretați 𝐸(𝑌) ca durată medie de funcționare fără eroare.
# D. Legătura dintre cele două modele
# 8. Știind că un bloc conține 100 de pachete calculați probabilitatea ca transmisia să fie întreruptă în interiorul unui bloc folosind variabila 𝑌.
# 9. Calculați aceeași probabilitate folosind variabila 𝑋.
# E. Pe lângă detectarea pachetelor corupte, serverul măsoară și timpul total de transmisie al unui bloc de 100 de pachete. Timpul ideal (fără erori) pentru transmiterea unui pachet este de 1 ms. Din cauza fluctuațiilor hardware și de rețea, fiecare măsurare este afectată de un eroare aleatoare normală 𝜀 ∼ 𝒩(0, 𝜎2), 𝜎 = 0.05 ms,independentă de toate celelalte variabile. Timpul măsurat pentru transmiterea unui bloc este: 𝑇 = 100 ms + 𝜀.
# 10. Arătați că 𝑇 are distribuție normală. Precizați media și deviația standard ale lui 𝑇.
# 11. Simulați 10 000 de valori ale lui 𝑇. Estimați media și deviația standard. Reprezentați histograma și suprapuneți densitatea normală teoretică.
