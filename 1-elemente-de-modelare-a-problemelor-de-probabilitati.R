#######################################################
# Elemente de modelare a problemelor de probabilitati #
#######################################################

# Sursa: https://alexamarioarei.quarto.pub/curs-ps-fmi/Laboratoare/Lab_Modelare.html

#########################
# 1. Aruncatul cu banul #
#########################

# Culori din libraria RColorBrewer: Reds, Purples, Greys, Greens, Blues

##################################
# Simuleaza 10 aruncari cu banul #
##################################

sample(c("H", "T"), 10, replace = TRUE)

####################################################################
# Estimeaza probabilitatea de a arata cap, moneda este echilibrata #
####################################################################

ban <- sample(c("H", "T"), 10000, replace = TRUE)
table(ban) / length(ban)

###################################################################
# Estimeaza probablitatea de a arata cap, moneda nu-i echilibrata #
###################################################################
ban <- sample(c("H", "T"), 10000, replace = TRUE, prob = c(0.2, 0.8))
table(ban) / length(ban)

###############################
# Sirul frecventelor relative #
###############################

N <- 10000
ban <- sample(c("H","T"), N, replace = TRUE)
y <- cumsum(ban == "H")/(1:N)
plot(1:N, y, type = "o", col = brewer.pal(7, "Blues"), bty = "n",
     xlab ="Numar aruncari", ylab = "Frecventa relativa", 
     ylim = c(min(y), max(y)), pch = 16)
abline(h = 0.5, lty = 2, col = brewer.pal(7, "Reds"))

#####################################################
# 2. Numarul de baieti dintr-o familie cu doi copii #
# Exercitiul 2.1                                    #
#####################################################

# Cerinta: O familie are doi copii. Care este probabilitatea ca ambii copii să fie băieți știind că cel puțin unul dintre copii este băiat? Care este probabilitatea ca ambii copii să fie băieți știind că cel mai tânăr este băiat?

N <- 10^5
copil1 <- sample(c("baiat", "fata"), N, replace = TRUE)
copil2 <- sample(c("baiat", "fata"), N, replace = TRUE)

# Notam A evenimentul ca ambii copii sa fie baieti
# Notam B evenimentul prin care cel mai tanar este baiat

nB <- sum(copil2 == "baiat")
nAB <- sum(copil1 == "baiat" && copil2 == "baiat")

p2 <- nAB / nB

# Notam C evenimentul prin care familia are cel putin un baiat
nC <- sum(copil1 == "baiat" | copil2 == "baiat")
p1 <- nAB / nC

#####################################################
# 2. Numarul de baieti dintr-o familie cu doi copii #
# Exercitiul 2.2                                    #
#####################################################

# Cerinta: O familie are doi copii. Sa se determine probabilitatea ca ambii copii sa fie de sex feminin stiind ca cel putin unul dintre ei este fata nascuta iarna. Vom presupune ca avem sanse egale ca un copil sa se fi nascut in oricare din cele patru anotimpuri si ca intre sexul copilului si anotimp nu exista nicio legatura.

# Spatiul starilor, omega = {BP, BV, BT, BI, FP, FV, FT, FI} ^ 2
# Unde B baiat, F fata, P primavara, V vara, T toamna, I iarna
# P (ambii sa fie F | cel putin unul este FI) = 7 / 15
# Deoarece, (FP, FI), (FV, FI), (FT, FI), (FI, FI), (FI, FP), (FI, FV), (FI, FT), de unde rezulta respectivul 7
# Si, (BP, FI), (BV, FI), (BT, FI), (BI, FI), (FP, FI), (FV, FI), (FT, FI), (FI, FI), (FI, BP), (FI, BV), (FI, BT), (FI, BI), (FI, FP), (FI, FV), (FI, FT), de unde rezulta respectivul 15

# Genereaza N familii
N <- 100000 # numarul de repetari ale experimentului

copil1 <- sample(c("baiat-primavara", "baiat-vara", "baiat-toamna", "baiat-iarna", "fata-primavara", "fata-vara", "fata-toamna", "fata-iarna"), N, replace = TRUE)
copil2 <- sample(c("baiat-primavara", "baiat-vara", "baiat-toamna", "baiat-iarna", "fata-primavara", "fata-vara", "fata-toamna", "fata-iarna"), N, replace = TRUE)

# Notam B evenimentul ca cel putin un copil sa fie fata
nB <- sum(copil1 == "fata-iarna" | copil2 == "fata-iarna")

# Notam A evenimentul ca ambii copii sa fie fete
# nAB = frecventa de aparitie a evenimentului A intersectat cu B
nAB <- sum(copil1 == "fata-iarna" & (copil2 == "fata-vara" | copil2 == "fata-primavara" | copil2 == "fata-toamna" | copil2 == "fata-iarna")) + sum(copil2 == "fata-iarna" & (copil1 == "fata-primavara" | copil1 == "fata-vara" | copil1 == "fata-toamna"))

pAB <- nAB / nB

#########################
# 3. Aruncatul cu zarul #
# Exercitiul 3.1        #
#########################

# Cerinta: Sa presupunem ca aruncam trei zaruri echilibrate (sau cu un zar de trei ori). Care este probabilitatea ca suma punctelor de pe fata superioara sa fie egal cu 8? Care este probabilitatea ca primul zar (sau la prima aruncare) sa arate mai putin de 3 puncte dat fiind ca suma punctelor de pe fetele celor trei zaruri este mai mare sau egala cu 8?

# Simuleaza aruncarea mai multor zaruri si estimeaza probabilitatea ca suma sa fie o anumita valoare

#############################################################
# Rezolvarea pentru prima parte a cerintei exercitiului 3.1 #
#############################################################

prob_zar <- function(d = 3, s = 8, n = 1000){
  # d - numarul de zaruri
  # s - suma valorilor celor d zaruri
  # n - nr de repetari ale experimentului 
  
  rez <- rep(0, n)
  
  # repet experimentul de n ori
  for (i in 1:n){
    x <- sample(1:6, d, replace = TRUE)
    rez[i] <- sum(x)
  }
  
  return(list(r1 = sum(rez == s)/n, r2 = table(rez)/n))
  
}

# Pentu 10^4 repetari ale experientului probabilitatea este z
z <- prob_zar(3, 8, 10^4)
z$r1

######################################
# Repartitia sumei celor trei zaruri #
######################################

barplot(height = as.numeric(z$r2), names.arg = names(z$r2))

###############################################
# O scriere mai compacta cu functia replicate #
###############################################

zard <- function(d) {
  return (sample(1:6, d, replace = TRUE))
}

prob_zar2 <- function(d = 3, s = 8, n = 1000) {
  rez <- replicate(n, sum(rolld(d)))
  return(list(r1 = sum(rez == s) / n, r2 = table(rez) / n))
}

##############################################################
# Rezolvarea pentru a doua parte a cerintei exercitiului 3.1 #
##############################################################

n <- 1000

# Suma zarurilor
cA <- 0

# X1 < 3 si suma >= 8
cBA <- 0

for (i in 1:n) {
  x <- sample(1:6, 3, replace = TRUE)
  if (sum(x) >= 8) {
    cA <- cA + 1
    if (x[1] < 3) {
      cBA <- cBA + 1
    }
  }
}

# Estimarea probabilitatii
cBA / cA

####################
# 4. Jocul de loto #
####################

##############################################
# Aside: Lista exercitii generata de chatgpt #
##############################################

# Obiectiv: Intelege conceptele, notiunile explicate in notele de laborator - Modelare printr-o serie de exercitii usoare, medii, dificile

#####################################
# 1. Simularea aruncarilor cu banul #
#####################################

# Cerinta 1.1: Simuleaza 20 de aruncari cu banul. Care este frecventa relativa a lui H?

sample(c("H", "T"), 20, replace = TRUE)

# Intrebare: De ce e nevoie de replace = TRUE?
# Raspuns: Pentru a extrage H, T de n ori, in cazul acesta, de 20 de ori

# Intrebare: De ce imi da eroare fara replace = TRUE?
# Raspuns: Fara replace = TRUE, R incearca sa extraga 20 de valori diferite din vectorul de doua elemente, H si T.

# Intrebare: Care este frecventa relativa a lui H?
# Raspuns: Frecventa relativa a lui H este 50%
# Raspuns revizuit: Trebe calculat

# Calculeaza frecventa relativa a lui H
res <- sample(c("H", "T"), 20, replace = TRUE)
cazuriFavorabile <- sum(res == "H")
frecventaRelativa1 <- cazuriFavorabile / length(res)
frecventaRelativa2 <- cazuriFavorabile / 20

# Observatie: Cele doua, frecventaRelativa1 si frecventeRelativa2 sunt echivalente

# Cerinta chat 1.2: Repeta simularea de 1000 de ori. Cum se schimba frecventa relativa?

res <- sample(c("H", "T"), 10^3, replace =  TRUE)

# Intrebare: Cum se calculeaza frecventa relativa?
# Raspuns: Frecventa relativa se calculeaza dupa formula cazuri favorabile pe cazuri posibile
frecventaRelativa = sum(res == "H") / 10^3
frecventaRelativa

# Intrebare: Cum se schimba frecventa relativa?
# Raspuns: Nu se schimba, ramane tot 50%
# Raspuns revizuit: Frecventa relativa se apropie tot mai mult de 0.5

# Cerinta chatgpt 1.3: Ce observi daca reprezinti grafic sirul frecventelor relative pentru 1000 de aruncari?

# Incarca pachetul
library(RColorBrewer)

numarAruncari <- 10^3
ban <- sample(c("H", "T"), numarAruncari, replace = TRUE)
y <- cumsum(ban == "H") / (1:numarAruncari)
plot(1:numarAruncari, y, type = "o", col = brewer.pal(7, "Blues"), bty = "n", xlab = "Numar aruncari", ylab = "Frecventa relativa", ylim = c(min(y), max(y)), pch = 16)
abline(h = 0.5, lty = 2, col = brewer.pal(7, "Reds"))

# Intrebare: Ce reprezinta y in codul de mai sus?
# Raspuns: Reprezinta sirul frecventelor relative cumulative pentru H la fiecare pas

# Intrebare: Ce inseamna type = "o"?
# Raspuns: Avem urmatoarele: 
#   p, points, doar puncte
#   l, lines, doar linie
#   b, puncte si linie dar nu suprapuse
#   o, puncte si linie suprapuse exact, overplotted

# Intrebare: De la ce vine bty, brewer, pal, xlab, ylab, ylim, c, pch, abline, h, lty?
# Raspuns: Avem urmatoarele
#   bty - accepta "o", "n" adica border normal, fara border
#   brewer - numele sistemului de palete
#   pal - palette
#   xlab - eticheta axei Numar aruncari
#   ylab - eticheta axei Frecventa relativa
#   ylim - limita axei Y
#   pch - plot character, tipul punctelor, 16 cerc plin, 1 cerc gol
#   abline - traseaza linii suplimentare pe grafic (prob. teoretica 0.5)
#     h - horizontal
#     v - vertical
#     linie de forma y = a + b x
#   h - height
#   lty - line type
#     1 - linie continua
#     2 - linie punctata, intrerupta, dashed
#     3 - linie punct in punct

# Intrebare: Cum rezolv `could not find function "brewer.pal"`?
# Raspuns: Incarca pachetul cu `library(RColorBrewer)`

############################
# 2. Moneda dezechilibrata #
############################

# Cerinta chatgpt 2.1: Simuleaza 5000 de aruncari cu o moneda in care P(H) = 0.7. Estimeaza P(H) si compara P(H) cu 0.7

res <- sample(c("H", "T"), 5*10^3, replace = TRUE, prob = c(0.7, 0.3))
pH <- sum(res == "H") / (5*10^3)
pH

# Intrebare: Cum rezolv incorrect number of probabilities?
# Raspuns: In loc de prob = 0.7 pun prob = c(0.7, 0.3)

# Intrebare: Ce se intampla daca faci doar 20 de aruncari? Rezultatul mai seamana cu 0.7?
# Raspuns: Daca fac doar 20 de aruncari atunci rezultatul nu mai seamana cu 0.7.

res20 <- sample(c("H", "T"), 20, replace = TRUE, prob = c(0.7, 0.3))
pH20 <- sum(res20 == "H") / 20
pH20

#############################
# 3. Doi copii - caz simplu #
#############################

# Cerinta chatgpt 3.1: Genereaza 10^5 familii cu doi copii, fara anotimp. Estimeaza probabilitatea ca ambii sa fie baieti.

nrFamilii <- 10^5
primulCopil <- sample(c("baiat", "fata"), nrFamilii, replace = TRUE)
alDoileaCopil <- sample(c("baiat", "fata"), nrFamilii, replace = TRUE)

# Notam A evenimentul ca ambii copii sa fie baieti
pA = sum(primulCopil == "baiat" & alDoileaCopil == "baiat") / nrFamilii
pA

# Intrebare: Cum rezolv length = 100000 in coercion to logical(1)
# Raspuns: Inlocuieste && cu & (Explicatie: Operatorul && este un operator scalar si operatorul & este un operator vectorial)

####################################
# 4. Doi copii - copilul mai tanar #
####################################

# Cerinta: Genereaza 2 * 10 ^ 5 familii. Estimeaza P(ambii baieiti | cel putin unul este baiat). Care e mai mare? De ce?

# Intreabare: Ce semnifica caracterul | in P()?
# Raspuns: P(A | B) inseamna probabilitatea lui A conditionata de B sau altfel formulat: probabilitatea ca A sa se intample stiind ca B s-a intamplat deja

#########################
# 5. Fete nascute iarna #
#########################

# Cerinta: Lucrand pe spatiul extins B(P,V,T,I), F(P,V,T,I). Simuleaza 2 * 10 ^ 5 familii. Estimeaza P(ambii F | cel putin unul F-I). Verifica daca rezultatul tau se apropie de 7/15

nrFamilii <- 2 * 10 ^ 5
primulCopil = sample(c("BP", "BV", "BT", "BI", "FP", "FV", "FT", "FI"))
alDoileaCopil = sample(c("BP", "BV", "BT", "BI", "FP", "FV", "FT", "FI"))

# Notam A evenimentul ca cel putin un copil sa fie o fata nascuta iarna
# Notam B evenimentul ca ambii copii sa fie fete

pA = sum(primulCopil == "FI" || alDoileaCopil == "FI") / nrFamilii
PAB = sum((primulCopil == "FI" && (alDoileaCopil == "FP" || alDoileaCopil == "FP" || alDoileaCopil == "FT" || alDoileaCopil == "FI")) || alDoileaCopil == "FI" && (alDoileaCopil == "FP" || alDoileaCopil == "FP" || alDoileaCopil == "FT" || alDoileaCopil == "FI")) / nrFamilii

pAB

# Intrebare: Cum rezolv length = 8 in coercion to logical(1)?
# Raspuns: Inlocuieste && cu & (Explicatie: Operatorul && este un operator scalar si operatorul & este un operator vectorial)

###############################
# 6. Aruncarea cu trei zaruri #
###############################

# Cerinta: Simuleaza 10 ^ 5 de experimente cu 3 zaruri. Estimeaza probabilitatea ca suma sa fie exact 8. Reprezinta distributia sumelor intr-un barplot (ca in cod)

nrExperimente = 10 ^ 5

# Notam A evenimentul ca suma sa fie 8

zar1 <- sample(1:6, 10^5, replace = TRUE)
zar2 <- sample(1:6, 10^5, replace = TRUE)
zar3 <- sample(1:6, 10^5, replace = TRUE)

pA = sum(zar1 + zar2 + zar3 == 8) / nrExperimente

pA

# Intrebare: Cum rezolv could not find function n?

###########################################
# 7. Probabilitate conditionata cu zaruri #
###########################################

# Cerinta: Simuleaza 10^5 aruncari triple. Estimeaza P(X1 < 3 | suma >= 8). Compara rezultatul cu valoarea teoretica.

# Intrebare: Cum calculez valoarea teoretica?
# Raspuns:
#   X1 = 1 => X2 + X3 >= 7. Prin urmare avem 12 cazuri favorabile, anume 116, 125, 126, 134, 135, 136, 144, 145, 146, 155, 156, 166
#   X2 = 2 => X2 + X3 >= 6. Prin urmare ave 15 cazuri favorabile, anume 15, 16, 24, 25, 26, 33, 34, 35, 36, 44, 45, 46, 55, 56, 66
#   Asadar, pA = 27 / 6 * 5 * 4 = 27 / 120 = 9 / 40

nrAruncari = 10^5
aruncarea1 = sample(1:6, nrAruncari, replace = TRUE)
aruncarea2 = sample(1:6, nrAruncari, replace = TRUE)
aruncarea3 = sample(1:6, nrAruncari, replace = TRUE)

pA = sum(aruncarea1 < 3 & aruncarea2 + aruncarea3 >= 8) / nrAruncari
pA

# Intrebare: Cum rezolv lenght = 100000 in coercion to logical(1)?
# Raspuns: Inlocuieste && cu & (Explicatie: Operatorul && este un operator scalar si operatorul & este un operator vectorial)















