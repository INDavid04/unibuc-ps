Aceasta este o întrebare excelentă. În problemele de examen, **cuvântul cheie** este cel care îți spune ce formulă să scoți din "trusă".

Trebuie să împărțim distribuțiile în două mari categorii, pentru că matematica e complet diferită:

1.  **Discrete** (numărăm ceva: succese, bile, oameni). Aici ai $P(X=k)$.
2.  **Continue** (măsurăm ceva: timp, înălțime, litri). Aici ai $f(x)$ (densitate) și integrezi.

Iată "dicționarul" complet pe care trebuie să îl știi:

---

### 1. Variabile DISCRETE (Numere întregi)

_Aici $P(X=k)$ are o formulă specifică. Dacă vrei $P(X < k)$, faci suma (aduni P(0) + P(1) + ...)._

#### A) "Repartizată BINOMIAL" ($n, p$)

- **Cuvinte cheie:** "Se fac $n$ încercări", "Probabilitate de succes $p$", "De câte ori apare succesul?", "Cu revenire".
- **Formula ($P(X=k)$):**
  $$C_n^k \cdot p^k \cdot (1-p)^{n-k}$$
- **Exemplu:** Arunci un zar de 5 ori. De câte ori iese 6?

#### B) "Repartizată POISSON" ($\lambda$)

- **Cuvinte cheie:** "Evenimente rare", "Într-un interval de timp/spațiu", "Numărul de viroze pe an", "Apeluri la call-center pe oră".
- **Formula ($P(X=k)$):**
  $$\frac{\lambda^k \cdot e^{-\lambda}}{k!}$$
- **Exemplu:** Media e 3 accidente pe lună. Care e șansa să fie exact 2?

#### C) "Repartizată GEOMETRICĂ" ($p$)

- **Cuvinte cheie:** "Se repetă până când reușește", "Primul succes", "Câte încercări sunt necesare?".
- **Formula ($P(X=k)$):**
  $$(1-p)^{k-1} \cdot p$$
  _(Adică $k-1$ eșecuri urmate de un succes)_.
- **Exemplu:** Dai cu banul până iese pajură.

#### D) "Repartizată HIPERGEOMETRICĂ" ($N, M, n$)

- **Cuvinte cheie:** "Urnă cu bile", "Se extrag $n$ bile **FĂRĂ revenire**", "Lot de produse din care extragem un eșantion".
- **Formula ($P(X=k)$):**
  $$\frac{C_M^k \cdot C_{N-M}^{n-k}}{C_N^n}$$
  _(Combinări de "bune" $\times$ Combinări de "rele" / Combinări Totale)_.

---

### 2. Variabile CONTINUE (Intervale reale)

_Aici $P(X=k)$ este mereu 0. Ne interesează doar intervalele. Densitatea $f(x)$ se integrează._

#### A) "Repartizată UNIFORM" ($a, b$)

- **Cuvinte cheie:** "Orice valoare între a și b este echiprobabilă", "Autobuzul vine între 8:00 și 8:10".
- **Densitate ($f(x)$):** $\frac{1}{b-a}$
- **Probabilitate ($P(X < x)$):**
  $$\frac{x - a}{b - a}$$
  _(Practic: cât ai parcurs din interval / lungimea totală)_.

#### B) "Repartizată NORMAL" (Gauss) ($m, \sigma^2$)

- **Cuvinte cheie:** "Înălțimea populației", "Erori de măsurare", "Media $m$ și dispersia $\sigma^2$".
- **Atenție!** Aici NU integrezi manual formula (e prea grea). Folosești **STANDARDIZAREA**.
- **Metoda:**
  1. Transformi $X$ în $Z$ (variabila standard): $Z = \frac{X - m}{\sigma}$.
  2. Cauți valoarea în **Tabelul Z** (tabelul Laplace).
     $$P(X < x) = \Phi\left(\frac{x - m}{\sigma}\right)$$

#### C) "Densitate dată prin funcție oarecare" (Ex: $f(x) = ax^2$)

- **Cuvinte cheie:** "Fie $f(x) = ...$ determinați constanta $a$".
- **Metoda:**
  1. Ca să afli constanta: $\int_{-\infty}^{\infty} f(x) dx = 1$.
  2. Ca să afli probabilitatea: $P(c < X < d) = \int_{c}^{d} f(x) dx$.

---

### Tabel Recapitulativ Rapid (Cheat Sheet)

| Cuvânt cheie în text                    | Tip Variabilă   | Formula principală de memorat                         |
| :-------------------------------------- | :-------------- | :---------------------------------------------------- |
| **"succese din n încercări"**           | Binomială       | $C_n^k p^k (1-p)^{n-k}$                               |
| **"până la primul succes"**             | Geometrică      | $(1-p)^{k-1} p$                                       |
| **"medie $\lambda$ (evenimente rare)"** | Poisson         | $\frac{\lambda^k e^{-\lambda}}{k!}$                   |
| **"fără revenire (bile)"**              | Hipergeometrică | $\frac{C_{Bune}^k \cdot C_{Rele}^{n-k}}{C_{Total}^n}$ |
| **"timpul de așteptare / durată"**      | Exponențială    | $F(x) = 1 - e^{-\lambda x}$                           |
| **"între a și b (egal)"**               | Uniformă        | $\frac{x-a}{b-a}$                                     |
| **"clopot / medie și dispersie"**       | Normală         | $Z = \frac{X-m}{\sigma}$ (apoi Tabel)                 |

# 1. Variabile DISCRETE (Numărăm chestii)

### A) Distribuția BINOMIALĂ (Succese repetate)

**Problema:** Un student dă un test grilă și răspunde la nimereală la **3 întrebări**. Fiecare întrebare are 4 variante, deci șansa să nimerească răspunsul corect este $p = 0.25$ (adică 1/4).
Care este probabilitatea să nimerească **exact 2** răspunsuri corecte?

- **Date:** $n = 3$ (încercări), $p = 0.25$ (succes), $k = 2$ (vrem 2 succese).
- **Formula:** $P(X=k) = C_n^k \cdot p^k \cdot (1-p)^{n-k}$
- **Calcul:**
  1.  Calculăm combinările: $C_3^2 = \frac{3!}{2!(3-2)!} = 3$.
  2.  Termenul de succes: $p^2 = 0.25^2 = 0.0625$.
  3.  Termenul de eșec: $(1-p)^{3-2} = 0.75^1 = 0.75$.
  4.  Înmulțim tot: $3 \cdot 0.0625 \cdot 0.75 = \mathbf{0.1406}$.
- **Răspuns:** Are aprox. 14% șanse.

---

### B) Distribuția POISSON (Evenimente rare)

**Problema:** La un ghișeu vin în medie **4 clienți pe oră** ($\lambda = 4$).
Care este probabilitatea ca în următoarea oră să vină **exact 2** clienți?

- **Date:** $\lambda = 4$, $k = 2$.
- **Formula:** $P(X=k) = \frac{\lambda^k \cdot e^{-\lambda}}{k!}$
- **Calcul:**
  1.  Numărătorul: $4^2 = 16$.
  2.  Exponentiala: $e^{-4} \approx 0.0183$.
  3.  Numitorul: $2! = 2 \cdot 1 = 2$.
  4.  Calcul final: $\frac{16 \cdot 0.0183}{2} = 8 \cdot 0.0183 = \mathbf{0.1464}$.
- **Răspuns:** Aprox. 14.6% șanse.

---

### C) Distribuția GEOMETRICĂ (Așteptarea succesului)

**Problema:** Un baschetbalist are o rată de succes de 50% ($p=0.5$) la aruncările libere. El aruncă până înscrie.
Care este probabilitatea să înscrie prima dată abia la **a 3-a aruncare**?

- **Date:** $p = 0.5$, $k = 3$ (succesul e la nr. 3, deci primele 2 sunt eșecuri).
- **Formula:** $P(X=k) = (1-p)^{k-1} \cdot p$
- **Calcul:**
  1.  Probabilitatea eșecului: $1 - 0.5 = 0.5$.
  2.  Eșecuri necesare: $k-1 = 2$.
  3.  Calcul: $0.5^2 \cdot 0.5 = 0.25 \cdot 0.5 = \mathbf{0.125}$.
- **Răspuns:** 12.5% șanse.

---

### D) Distribuția HIPERGEOMETRICĂ (Bile fără revenire)

**Problema:** Într-o urnă sunt **10 bile** ($N$): **4 Roșii** ($M$) și **6 Negre**. Extragem **3 bile** ($n$) fără să le punem înapoi.
Care este probabilitatea să scoatem **exact 2 Roșii** ($k=2$)?

- **Date:** $N=10, M=4, n=3, k=2$. (Implicit înseamnă că a 3-a bilă e Neagră).
- **Formula:** $\frac{C_{Roșii}^{Dorit} \cdot C_{Negre}^{Restul}}{C_{Total}^{Extrase}}$
- **Calcul:**
  1.  Combinări Roșii (vrem 2 din 4): $C_4^2 = 6$.
  2.  Combinări Negre (vrem 1 din 6): $C_6^1 = 6$.
  3.  Cazuri Totale (extragem 3 din 10): $C_{10}^3 = \frac{10 \cdot 9 \cdot 8}{3 \cdot 2 \cdot 1} = 120$.
  4.  Probabilitatea: $\frac{6 \cdot 6}{120} = \frac{36}{120} = \mathbf{0.3}$.
- **Răspuns:** 30% șanse.

---

# 2. Variabile CONTINUE (Măsurăm intervale)

### A) Distribuția EXPONENȚIALĂ (Durata de viață)

**Problema:** Durata de viață a unui bec este repartizată exponențial cu o medie de **1000 ore**.
Care este probabilitatea ca becul să se ardă în **mai puțin de 500 ore**?

- **Date:** Media $= 1000 \Rightarrow \lambda = \frac{1}{1000} = 0.001$. Vrem $P(X < 500)$.
- **Formula:** $F(x) = 1 - e^{-\lambda x}$
- **Calcul:**
  1.  Exponentul: $-\lambda x = -0.001 \cdot 500 = -0.5$.
  2.  Valoarea $e^{-0.5} \approx 0.606$.
  3.  Rezultat: $1 - 0.606 = \mathbf{0.394}$.
- **Răspuns:** Aprox. 39.4% șanse să se ardă repede.

---

### B) Distribuția UNIFORMĂ (Șanse egale peste tot)

**Problema:** Un autobuz vine oricând între ora **10:00 și 10:20**.
Care este probabilitatea să vină în primele **5 minute** (între 10:00 și 10:05)?

- **Date:** Interval $[a, b] = [0, 20]$. Vrem $P(X < 5)$.
- **Formula:** $\frac{x - a}{b - a}$
- **Calcul:**
  1.  Lungimea intervalului favorabil: $5 - 0 = 5$.
  2.  Lungimea intervalului total: $20 - 0 = 20$.
  3.  Probabilitatea: $\frac{5}{20} = \mathbf{0.25}$.
- **Răspuns:** 25% șanse.

---

### C) Distribuția NORMALĂ (Clopotul lui Gauss)

**Problema:** IQ-ul oamenilor are media $m = 100$ și deviația standard $\sigma = 15$.
Care este probabilitatea ca o persoană aleasă la întâmplare să aibă IQ-ul **sub 130**?

- **Date:** $m=100, \sigma=15$. Vrem $P(X < 130)$.
- **Formula (Standardizare):** $Z = \frac{X - m}{\sigma}$
- **Calcul:**
  1.  Calculăm scorul Z: $Z = \frac{130 - 100}{15} = \frac{30}{15} = 2$.
  2.  Interpretare: 130 este la "2 deviații standard" peste medie.
  3.  Ne uităm în **Tabelul Z** (se dă la examen) în dreptul lui 2.00.
  4.  Valoarea din tabel este $\approx 0.9772$.
- **Răspuns:** 97.72% din oameni au IQ sub 130.

---

### D) Distribuție oarecare (definită prin funcție)

**Problema:** Se dă densitatea $f(x) = 2x$ pentru $x \in [0, 1]$.
Care este probabilitatea ca $X$ să fie **mai mare de 0.5**?

- **Verificare (mentală):** $\int_0^1 2x dx = x^2 |_0^1 = 1$. (E corectă).
- **Formula:** $P(a < X < b) = \int_a^b f(x) dx$.
- **Calcul:**
  1.  Vrem $P(X > 0.5)$, deci integrăm de la 0.5 până la capătul intervalului (care e 1).
  2.  $\int_{0.5}^{1} 2x \, dx = [x^2]_{0.5}^{1}$.
  3.  Aplicăm limitele: $1^2 - 0.5^2$.
  4.  Calcul: $1 - 0.25 = \mathbf{0.75}$.
- **Răspuns:** 75% șanse.
