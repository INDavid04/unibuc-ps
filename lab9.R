# Problema: Dintr-un nod ce contine patru piese corespunzatoare si trei piese defecte se extrag simultan trei piese. Fie X variabila aleatoare ce indica numarul de piese corespunzatoare obtinute in cele trei extrageri. Determinati:

# a. Repartitia variabilei aleatoare (e pe notion > Laborator 9 24-11-2025)

# Problema 2: Sa zicem ca avem doua loterii. Prima loterie sa fie X1
n <- 100
x1 <- sample(c(-3, 3), n, replace = T)
x2 <- sample(c(-4, 3, 6), n, replace = T, prob = c(1/2, 1/3, 1/6))

# Histogrameaza vectorii
hist(x1)
hist(x2)

# Fa media lor
m1 <- mean(x1)
m2 <- mean(x2)

# Fa variantelor lor
var1 <- var(x1)
var2 <- var(x2)
