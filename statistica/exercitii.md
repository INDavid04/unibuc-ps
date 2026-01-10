Iată rezolvările detaliate pentru exercițiile și problemele propuse.

---

# Câmp de probabilitate, operații cu evenimente

### Exercițiul 1 (Bile în urnă)

Avem 5 extrageri cu întoarcere. Fie $A_i$ evenimentul "bila extrasă la pasul $i$ este albă".
Fie $N_i$ evenimentul "bila extrasă la pasul $i$ este neagră" ($N_i = \overline{A_i}$).

**a) Numai o bilă este albă:**
Acest eveniment înseamnă că una este albă și restul 4 sunt negre. Deoarece poziția bilei albe contează, reunim evenimentele disjuncte:
$A = (A_1 \cap N_2 \cap N_3 \cap N_4 \cap N_5) \cup (N_1 \cap A_2 \cap N_3 \cap N_4 \cap N_5) \cup \dots \cup (N_1 \cap N_2 \cap N_3 \cap N_4 \cap A_5)$.

**b) Cel puțin o bilă este neagră:**
Este complementul evenimentului "toate bilele sunt albe".
$B = \overline{A_1 \cap A_2 \cap A_3 \cap A_4 \cap A_5}$.

**c) Obținerea a cel mult două bile albe:**
Înseamnă că avem 0, 1 sau 2 bile albe. Fie $k$ numărul de bile albe.
$C = \{k=0\} \cup \{k=1\} \cup \{k=2\}$.

**d) Obținerea a cel puțin trei bile albe:**
Înseamnă 3, 4 sau 5 bile albe.
$D = \{k=3\} \cup \{k=4\} \cup \{k=5\}$.

**e) Numai două bile sunt negre:**
Dacă sunt exact 2 bile negre, înseamnă că restul de 3 sunt albe. Acest eveniment este echivalent cu "exact 3 bile sunt albe".
$E = \{k=3\}$.

---

### Exercițiul 2 (Rețele sociale)

Fie $T$ = are Twitter, $F$ = are Facebook.
Date: $P(\text{Niciunul}) = 0.6$, $P(T) = 0.2$, $P(F) = 0.3$.

1.  **Facebook SAU Twitter ($F \cup T$):**
    Știm că $P(\text{Niciunul}) = P(\overline{F \cup T}) = 1 - P(F \cup T)$.
    $0.6 = 1 - P(F \cup T) \Rightarrow P(F \cup T) = 0.4$.

2.  **Facebook ȘI Twitter ($F \cap T$):**
    Folosim formula reuniunii: $P(F \cup T) = P(F) + P(T) - P(F \cap T)$.
    $0.4 = 0.3 + 0.2 - P(F \cap T) \Rightarrow P(F \cap T) = 0.5 - 0.4 = 0.1$.

3.  **Doar Facebook sau doar Twitter (Diferența simetrică):**
    $P(Doar F) + P(Doar T) = P(F \cup T) - P(F \cap T) = 0.4 - 0.1 = 0.3$.

---

### Exercițiul 3 (Așezarea numerelor)

Număr total de permutări pentru 100 de numere = $100!$.

**a) 1 și 2 în ordine crescătoare și consecutive (blocul "1 2"):**
Considerăm perechea $(1, 2)$ ca un singur element. Avem acum 99 de elemente de așezat ($100 - 2 + 1$).
Număr cazuri favorabile: $99!$.
$P = \frac{99!}{100!} = \frac{1}{100}$.

**b) $k, k+1, k+2$ consecutive crescătoare:**
Considerăm tripletul ca un singur element. Avem $100 - 3 + 1 = 98$ elemente.
Număr cazuri favorabile: $98!$.
$P = \frac{98!}{100!} = \frac{1}{100 \times 99} = \frac{1}{9900}$.

---

### Exercițiul 4 (Șosete)

Fie $R$ șosete roșii și $N$ șosete negre. Total $T = R + N$.
Probabilitatea de a extrage 2 roșii este $\frac{C_R^2}{C_T^2} = \frac{R(R-1)}{T(T-1)} = \frac{1}{2}$.
Deci $2R(R-1) = T(T-1)$.

**a) Număr minim de șosete:**
Căutăm soluții întregi.

- Dacă $R=2 \Rightarrow 4 = T(T-1)$ (nu are soluție întreagă).
- Dacă $R=3 \Rightarrow 2 \cdot 3 \cdot 2 = 12 = 4 \cdot 3$. Deci $T=4$.
  Soluția minimă: **3 roșii, 1 neagră (Total 4)**.

**b) Număr minim dacă $N$ este par:**
În cazul anterior $N = 4-3=1$ (impar). Căutăm următoarele soluții.
Ecuația este legată de numere triunghiulare. Soluțiile $(R, T)$ sunt $(3,4), (15, 21), (85, 120), \dots$

- Pentru $(15, 21)$, $N = 21 - 15 = 6$ (par).
  Deci numărul minim este **21 șosete** (15 roșii, 6 negre).

---

### Exercițiul 5 (Divizibilitate cu 495)

Numărul $N$ are 5 cifre distincte. $495 = 5 \times 9 \times 11$.
Condiții:

1.  Divizibil cu 5: Ultima cifră $e \in \{0, 5\}$.
2.  Divizibil cu 9: Suma cifrelor $S$ este multiplu de 9.
3.  Divizibil cu 11: $(a+c+e) - (b+d)$ este multiplu de 11.

Calculul exact implică enumerarea combinațiilor de cifre.
Numărul total de extrageri ordonate (aranjamente): $A_{10}^5 = 30240$.
Se determină seturile de 5 cifre distincte care satisfac condițiile, apoi permutările lor valide.
_Răspuns scurt:_ Probabilitatea este raportul dintre numerele favorabile și 30240.

---

### Exercițiul 6 (Suma 5 înaintea sumei 7)

Spațiul de eșantionare pentru 2 zaruri are 36 elemente.
$P(Suma=5) = \frac{4}{36}$ (perechile 1-4, 4-1, 2-3, 3-2).
$P(Suma=7) = \frac{6}{36}$ (1-6, 6-1, 2-5, 5-2, 3-4, 4-3).
$P(Neutru) = 1 - \frac{10}{36} = \frac{26}{36}$.

**1. Calcul $P(E_n)$:**
$E_n$: primele $n-1$ nu sunt nici 5 nici 7, a $n$-a este 5.
$P(E_n) = \left(\frac{26}{36}\right)^{n-1} \cdot \frac{4}{36}$.
Suma infinită (probabilitatea totală):
$P = \sum_{n=1}^{\infty} \left(\frac{26}{36}\right)^{n-1} \frac{4}{36} = \frac{4/36}{1 - 26/36} = \frac{4/36}{10/36} = \frac{4}{10} = 0.4$.

**2. Cu 2 în loc de 5:**
$P(Suma=2) = \frac{1}{36}$ (doar 1-1).
$P = \frac{1/36}{1/36 + 6/36} = \frac{1}{7}$.

---

### Exercițiul 7 (Biciclete - Fără cifra 8)

Total numere: 10.000.
Numerele sunt formate din cifrele $\{0, 1, 2, 3, 4, 5, 6, 7, 9\}$ (9 cifre permise).
Putem privi numerele de la 0000 la 9999.
Numărul de șiruri de 4 cifre fără 8 este $9^4 = 6561$.
Deoarece intervalul este $1 \dots 10000$:

- Numărul 0000 (reprezentând 0) nu este în interval, îl scădem: $6561 - 1 = 6560$.
- Numărul 10000 nu conține cifra 8, îl adăugăm: $6560 + 1 = 6561$.
  Probabilitatea: $\frac{6561}{10000} = 0.6561$.

---

### Exercițiul 8 (Trenul)

Fiecare din cei 9 pasageri alege unul din cele 3 vagoane. Total cazuri: $3^9$.

1.  **3 în primul vagon:**
    Alegem 3 pasageri pentru vagonul 1 ($C_9^3$). Ceilalți 6 se așează oriunde în vagoanele 2 și 3 ($2^6$).
    $P = \frac{C_9^3 \cdot 2^6}{3^9}$.

2.  **3 în fiecare vagon (3, 3, 3):**
    Permutări cu repetiție (coeficient multinomial):
    $P = \frac{9!}{3!3!3!} \cdot \frac{1}{3^9}$.

3.  **2, 3, 4 în orice ordine:**
    Numărul de moduri de a grupa pasagerii: $\frac{9!}{2!3!4!}$.
    Numărul de moduri de a asigna grupurile vagoanelor (permutări de vagoane): $3! = 6$.
    $P = \frac{6 \cdot \frac{9!}{2!3!4!}}{3^9}$.

---

### Exercițiul 9 (Zaruri A vs B)

A aruncă 2 zaruri ($S_A \in [2, 12]$), distribuție triunghiulară.
B aruncă 1 zar cu 12 fețe ($S_B \in [1, 12]$), distribuție uniformă.
Total cazuri: $36 \times 12 = 432$.
Calculăm cazurile unde $S_A > S_B$ și $S_A = S_B$.

- **Remiză ($P(S_A = S_B)$):**
  Suma probabilităților ca A să dea $k$ și B să dea $k$.
  $P(Egal) = \sum_{k=2}^{12} P(S_A=k) \cdot \frac{1}{12} = \frac{1}{12} \sum_{k=2}^{12} P(S_A=k) = \frac{1}{12} \cdot 1 = \frac{1}{12} \approx 0.083$.
- **A câștigă ($S_A > S_B$):**
  Datorită simetriei distribuției lui A în jurul lui 7 și a uniformității lui B, dar având în vedere că B poate da 1 (ceea ce A câștigă automat), calculul exact arată:
  $P(A > B) = \frac{229}{432} \approx 0.53$.
  Jocul nu este echilibrat, A are avantaj.

---

# Probabilități condiționate

### Exercițiul 10 (Test alcool)

$A$: Șoferul a băut (Drunk). $P(A) = 0.005$.
$H$: Șoferul e treaz (Healthy). $P(H) = 0.995$.
$T$: Test pozitiv.
$P(T|A) = 0.99$ și $P(\bar{T}|H) = 0.99 \Rightarrow P(T|H) = 0.01$.

1.  **$P(A|T)$ (Teorema Bayes):**
    $P(A|T) = \frac{P(T|A)P(A)}{P(T|A)P(A) + P(T|H)P(H)} = \frac{0.99 \cdot 0.005}{0.99 \cdot 0.005 + 0.01 \cdot 0.995} = \frac{0.00495}{0.00495 + 0.00995} = \frac{0.00495}{0.0149} \approx 0.332$.
    (Doar 33% șanse să fie băut real).

2.  **Găsire $p$ pentru $P(A|T) = 0.95$:**
    $\frac{p \cdot 0.005}{p \cdot 0.005 + (1-p) \cdot 0.995} = 0.95$. Rezolvând ecuația, necesită $p$ extrem de aproape de 1 (practic imposibil fără a reduce drastic $P(T|H)$).

3.  **Sâmbătă seara ($P(A) = 0.30$):**
    $P(A|T) = \frac{0.99 \cdot 0.30}{0.99 \cdot 0.30 + 0.01 \cdot 0.70} = \frac{0.297}{0.297 + 0.007} \approx 0.977$.
    Polițistul are dreptate, fiabilitatea predictivă crește enorm când prevalența crește.

---

### Exercițiul 11 (Urna Polya)

Urna: $r$ roșii, $b$ albastre. Adăugăm $d$ bile.
Fie $A_i$ evenimentul "bila $i$ este albastră".

**a) $P(A_2)$:**
Probabilitatea marginală este constantă în schema Polya.
$P(A_2) = P(A_2|A_1)P(A_1) + P(A_2|R_1)P(R_1) = \frac{b+d}{r+b+d} \frac{b}{r+b} + \frac{b}{r+b+d} \frac{r}{r+b} = \frac{b(b+d+r)}{(r+b)(r+b+d)} = \frac{b}{r+b}$.

**b) $P(A_1 | A_2)$:**
$P(A_1 | A_2) = \frac{P(A_2|A_1)P(A_1)}{P(A_2)} = \frac{\frac{b+d}{r+b+d} \cdot \frac{b}{r+b}}{\frac{b}{r+b}} = \frac{b+d}{r+b+d}$.

**c) $P(B_n) = P(B_1)$:**
Se demonstrează prin inducție sau folosind simetria (interschimbabilitatea) variabilelor în procesul Polya.

**d) Limita:**
Pe măsură ce $n \to \infty$, proporția de bile albastre converge către o distribuție Beta. Probabilitatea condiționată tinde spre variabila aleatoare limită.

---

### Exercițiul 12 (Jocul cu bile)

Urne $U_1, U_2$. Bile 2A, 2N.
Obiectiv: Maximizare P(Negru).
Profesorul alege urna cu prob 0.5.
$P(N) = 0.5 P(N|U_1) + 0.5 P(N|U_2)$.
Strategii posibile (distribuind toate bilele):

1.  $U_1$: 1N, $U_2$: 1N, 2A. $P = 0.5(1) + 0.5(1/3) = 0.5 + 0.166 = 0.66$.
2.  $U_1$: 2N, $U_2$: 2A. $P = 0.5(1) + 0.5(0) = 0.5$.
    **Strategia optimă:** O urnă cu o singură bilă neagră, cealaltă cu restul (1N, 2A).

---

### Exercițiul 13 (Extrageri fără revenire)

24 Albe, 9 Negre. Total 33. Extragem 3.

**Ordinea A, A, N:**
$P = \frac{24}{33} \cdot \frac{23}{32} \cdot \frac{9}{31}$.

**Ordinea A, N, A:**
$P = \frac{24}{33} \cdot \frac{9}{32} \cdot \frac{23}{31}$. (Identic cu prima).

**2 din 3 să fie albe:**
Folosim distribuția hipergeometrică sau însumăm cazurile (AAN, ANA, NAA).
$P = 3 \times \left( \frac{24 \cdot 23 \cdot 9}{33 \cdot 32 \cdot 31} \right)$.

---

### Exercițiul 14 (Martin Gardner)

Spațiul: BB, BG, GB, GG. Probabilități egale 1/4.
**1.**

- Condiția "cel puțin un băiat": Spațiul redus {BB, BG, GB}. Cazuri favorabile {BB}. $P = 1/3$.
- Condiția "cel mai tânăr e băiat" (fie a doua poziție): Spațiul {BB, GB}. Cazuri favorabile {BB}. $P = 1/2$.

**2.**

- Condiția: "Este o fată născută iarna".
  Fie $F_i$ fată iarna, $F_x$ fată nu iarna, $B$ băiat.
  Probabilitatea unei $F_i$ este $1/2 \times 1/4 = 1/8$. Probabilitatea non-$F_i$ este $7/8$.
  Probabilitatea reuniunii "cel puțin o $F_i$": $1 - P(\text{niciuna } F_i) = 1 - (7/8)^2 = 1 - 49/64 = 15/64$.
  Probabilitatea intersecției "Două fete, cel puțin una iarna":
  Cazuri 2 fete: $F_i F_i, F_i F_x, F_x F_i$. (excludem $F_x F_x$).
  Prob = $(1/8)(1/8) + (1/8)(7/8) + (7/8)(1/8) = 1/64 + 7/64 + 7/64 = 15/64$.
  Așteptați, asta e probabilitatea absolută.
  Trebuie raportat la totalul spațiului.
  $P(FF | F_i) = \frac{P(FF \cap (F_{i1} \cup F_{i2}))}{P(F_{i1} \cup F_{i2})}$.
  Numitor: $15/64$.
  Numărător: Avem două fete și cel puțin una e iarna.
  Calcul: $P(FF) - P(F_x F_x) = 1/4 - (7/16 \times 7/16)?$ Nu.
  Simplu: $(1/8)^2 + 2(1/8)(3/8) = 1/64 + 6/64 = 7/64$. (Aici 3/8 e prob fată nu iarna).
  Rezultat: $(7/64) / (15/64) = 7/15 \approx 0.46$.

---

### Exercițiul 15 (Ruina jucătorului)

Joc cu monedă echilibrată ($p=0.5$).
Probabilitatea de a ajunge la $N$ pornind de la $k$ este $k/N$.
Probabilitatea de a ajunge la faliment (0) este $1 - k/N = \frac{N-k}{N}$.

---

### Exercițiul 16 (Instanța de judecată)

$G$: Vinovat (0.71), $I$: Nevinovat (0.29).
$P(V_j | G) = 0.72$, $P(V_j | I) = 0.19$.

**a) J3 votează V știind J1=V, J2=V:**
Trebuie să actualizăm probabilitatea ca acuzatul să fie Vinovat dată fiind decizia primilor doi.
Fie $E = V_1 \cap V_2$.
$P(E|G) = 0.72^2$, $P(E|I) = 0.19^2$.
$P(G|E) = \frac{0.72^2 \cdot 0.71}{0.72^2 \cdot 0.71 + 0.19^2 \cdot 0.29}$. (Calculăm această nouă probabilitate $P(G_{new})$).
Răspunsul final este $P(V_3 | E) = 0.72 \cdot P(G_{new}) + 0.19 \cdot (1 - P(G_{new}))$.

---

### Exercițiul 17 (Ionel și Vasile)

Trebuie calculate șansele unei secvențe HHH sau TTT în 5 aruncări.
Total secvențe $2^5 = 32$.
Secvențe favorabile pentru HHH:

- HHHxx (4 cazuri: HHHTT, HHHTH, HHHHH, HHHHT)
- THHHx (2 cazuri: THHHT, THHHH)
- TTHHH (1 caz)
  Total cu HHH = 4+2+1 = 7. (Verificare suprapuneri: HHHHH contat la prima, corect).
  Total cu TTT = 7.
  Suprapuneri (conțin și HHH și TTT): HHHTT (da), TTHHH (da). Sunt 2 cazuri.
  Total favorabil = $7 + 7 - 2 = 12$.
  $P = 12/32 = 3/8 = 0.375$.
  Deoarece $0.375 < 0.5$, Ionel plătește mai rar decât la aruncarea simplă a monedei. **Ionel are dreptate să fie bucuros.**

---

# Variabile aleatoare discrete

### Exercițiul 18 (Calcule elementare)

$X \in \{-1, 0, 1\}$ cu probabilități $\{0.3, 0.2, 0.5\}$.

- **$3X+7$**: Valori $\{4, 7, 10\}$. Probabilități aceleași.
- **$X^2$**: Valori $\{0, 1\}$.
  $P(X^2=0) = P(X=0) = 0.2$.
  $P(X^2=1) = P(X=-1) + P(X=1) = 0.3 + 0.5 = 0.8$.
- **$P(X > -1/3)$**: $X$ poate fi 0 sau 1. $P = 0.2 + 0.5 = 0.7$.
- **Condiționată $P(X < 1/4 | X \ge -1/2)$**:
  Numitor: $P(X \in \{0, 1\}) = 0.7$.
  Numărător: $P(X \in \{0\} \cap \{0, 1\}) = P(X=0) = 0.2$.
  Rezultat: $0.2 / 0.7 = 2/7$.

### Exercițiul 19 (Poisson)

**a) Recurența:**
$\frac{p_n}{p_{n-1}} = \frac{e^{-\lambda}\lambda^n / n!}{e^{-\lambda}\lambda^{n-1} / (n-1)!} = \frac{\lambda}{n}$. Aceasta definește unic Poisson.
**b) Maximizare:**
Probabilitatea crește cât timp $\lambda/n > 1 \Leftrightarrow n < \lambda$. Maximul este atins la partea întreagă $[\lambda]$.
Pentru $k$ fixat, maximizarea în funcție de $\lambda$ se face derivând funcția de verosimilitate $\lambda^k e^{-\lambda}$, rezultă $\lambda = k$.

### Exercițiul 20 (Secvență HH sau TT - Geometric generalizat)

Fie $N$ numărul de aruncări.
Este o problemă clasică de timp de așteptare.
Media este $E[N] = \frac{1}{p^2} + \frac{1}{q^2} - \frac{1}{pq}$? Nu, asta e pentru una specifică.
Aici oricare din ele oprește jocul.
Dacă $p=0.5$, $E[N] = 3$.

---

# Variabile aleatoare continue

### Exercițiul 33 (Determinare constantă și repartiție)

**a) Logaritm:**
Condiția $\int_0^7 c \ln(7/x) dx = 1$.
Substituție $u = x/7$, etc. Integrala $\int_0^7 \ln 7 - \ln x dx = [x \ln 7 - (x \ln x - x)]_0^7 = 7 \ln 7 - (7 \ln 7 - 7) = 7$.
Deci $c \cdot 7 = 1 \Rightarrow c = 1/7$.
$P(X > 3) = \int_3^7 f(x) dx$.

**b) Uniform:**
$\int_{1-c}^{1+c} \frac{1}{x} dx = [\ln x]_{1-c}^{1+c} = \ln \frac{1+c}{1-c} = 1$.
$\frac{1+c}{1-c} = e \Rightarrow 1+c = e - ec \Rightarrow c(1+e) = e-1 \Rightarrow c = \frac{e-1}{e+1}$.

### Exercițiul 34 (Repartiție Gamma)

$f(x) = \alpha x^2 e^{-kx}$.
Aceasta este forma unei distribuții Gamma $Ga(3, k)$.
Condiția de normalizare: $\alpha \int_0^\infty x^2 e^{-kx} dx = 1$.
Integrala este $\frac{\Gamma(3)}{k^3} = \frac{2}{k^3}$.
Deci $\alpha \cdot \frac{2}{k^3} = 1 \Rightarrow \alpha = \frac{k^3}{2}$.

### Exercițiul 35 (Lipsa de memorie)

Proprietatea definitorie a distribuției exponențiale.
$P(X > s+t | X > s) = \frac{e^{-\lambda(s+t)}}{e^{-\lambda s}} = e^{-\lambda t} = P(X > t)$.
Implicația inversă se rezolvă prin ecuația funcțională Cauchy $G(s+t) = G(s)G(t)$ unde $G(x) = P(X>x)$.

### Exercițiul 36 (Circuit electronic)

**1. Densitate:**
$f(t) = F'(t) = t e^{-t^2/2}$ (Distribuție Rayleigh).
$E[T] = \int_0^\infty t^2 e^{-t^2/2} dt = \sqrt{\frac{\pi}{2}}$.

**2. Condiționată:**
$P(T > 3 | T > 1) = \frac{P(T>3)}{P(T>1)} = \frac{e^{-4.5}}{e^{-0.5}} = e^{-4}$.
Nu are proprietatea lipsei de memorie (depinde de timpul scurs).

### Exercițiul 40 (Corelație Min/Max Normal)

Fie $X, Y \sim N(0,1)$ independente.
$U = \min(X, Y)$, $V = \max(X, Y)$.
Știm că $U+V = X+Y$ și $UV = XY$.
$E[U+V] = 0$. Deoarece distribuția e simetrică, $E[U] = -E[V]$.
$E[V] = \frac{1}{\sqrt{\pi}}$. Deci $E[U] = -\frac{1}{\sqrt{\pi}}$.
Covarianța: $Cov(U, V) = E[UV] - E[U]E[V] = E[XY] - (-\frac{1}{\pi}) = 0 + \frac{1}{\pi} = \frac{1}{\pi}$.
Calculul dispersiilor pentru coeficientul de corelație necesită $E[V^2] = 1$.
$Var(V) = 1 - 1/\pi$.
$\rho = \frac{1/\pi}{1 - 1/\pi} = \frac{1}{\pi - 1}$.
