##################################################
# Problema 1 a din fisierul Probleme lab 3-4.pdf #
# Abordarea cu probabilitatea empirica           #
##################################################

# Instalam pachetul prob
install.packages("prob")
library(prob)

# Alternativa pentru instalarea pachetului prob
source("prob_alternativ.R")

cards()

n <- 10^6

# O eficientizare imediata: mutam carti in afara lui test
carti <- cards()

test <- replicate(n, {
  # Replace = true e cu revenire
  indici <- sample(1:52, 5, replace="false")
  
  # Vrem sa punem o conditie asupra liniilor
  extragere <- carti[indici,]
  
  # Cum scriu conditia ca toate sa aiba o singura culoare
  raspuns <- sum(extragere $suit[1] == extragere$suit[2:5]) == 4
  
  # Ma intereseaza sa calculez probabilitatea empirica
  prob_emp <- sum(test)/n
  
  # Probabilitatea teoretica
  prob <- choose(4, 1) * choose(13, 5) / choose(52, 5)
})

##################################################
# Problema 1 b din fisierul Probleme lab 3-4.pdf #
# Abordarea cu probabilitatea empirica           #
##################################################

# Probabilitatea teoretica
prob <- choose(4, 2) * choose(13, 1) * choose(12, 3) * (choose(4, 1) ^ 3) / choose(52, 5) # choose adica combinari

# Nu stim care dintre prob1 si prob2 dau probabilitatea adevarata si vrem sa validam pe una dintre ele prin probabilitatea empirica
# Asadar, pentru saptamana urmatoare: luam toate probleme anterioare si facem probabiitatea empririca si teoretica

# Probabilitatea empirica
n <- 10^2
carti <- cards()
test <- replicate(n, {
  indici <- sample(1:52, 5)
  extragere <- carti[indici,]
  raspuns <- length(unique(extragere$rank)) == 4
})

prob_emp = sum(test)/n
  
# Folosirea functiei unique
x <- c(3:5, 11:8, 8 + 0:5)
(ux <- unique(x))
(u2 <- unique(x, fromLast = TRUE)) # different order
# end of unique

##########################################################
# Problema 11 din Calcul_probabilitati_cu_evenimente.pdf #
##########################################################

# Cerinta: Un agregat are 3 componente, la care pot apărea defecțiuni de funcționare cu probabilitățile de: 0.075, 0.09 și respectiv 0.082. Să se determine: (a) probabilitatea minimă ca agregatul să funcționeze(agregatul funcționează numai dacă toate cele trei componente sunt funcționale) (b) probabilitatea maximă ca agregatul să funcționeze

# Notam cu Di evenimentul ca se detecteaza componenta i
# P(D1) = 0.075
# P(D2) = 0.09
# P(D3) = 0.082

# Nu putem rezuma independeta deci nu putem caclula direct

# Inegalitatea lui Boole
# P(D1 reunit cu D2 reunit cu D3) <= P(D1) + P(D2) + P(D3)
# P(D1 reunit cu D2 reunit cu D3) <= P(D1) + P(D2) + P(D3)

# P(F) = P(intersectie dupa i de la 1 la 3 din negarea evenimentului Di)
# In ipoteza de defectare independenta

# De unde imi vine ideea ca sunt independente?

##########################################################
# Problema 13 din Calcul_probabilitati_cu_evenimente.pdf #
##########################################################

# Deci am doua numere luate la intamplare { 
#   x + y <= 1 ... x + y = 1 => y = 1 - x
#   x * y <= 2/9 ... xy = 2/9 => y = 2/9 * 1/x
# }

# Pentru saptamana urmatoare: partea de simulare si implemnetare a calculului in R, adica din pdf-ul acesta
