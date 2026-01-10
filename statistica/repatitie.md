**„Repartiția”** (sau distribuția) unei variabile aleatoare $X$ este, simplu spus, **buletinul de identitate** al acelei variabile.

Ea răspunde la două întrebări esențiale:

1.  **Ce valori** poate lua $X$?
2.  **Cu ce probabilitate** ia fiecare valoare?

În funcție de tipul variabilei (Discretă sau Continuă), repartiția arată diferit pe foaie.

---

### 1. Dacă variabila este DISCRETĂ (Numere fixe)

_(Exemple: aruncarea zarului, numărul de bile, numărul de steme)_

Aici, repartiția se scrie sub forma unui **TABEL** (numit și tablou de repartiție).

**Cum arată:**
$$X \sim \begin{pmatrix} x_1 & x_2 & \dots & x_n \\ p_1 & p_2 & \dots & p_n \end{pmatrix}$$

- **Linia de sus ($x_i$):** Valorile posibile (rezultatele experimentului).
- **Linia de jos ($p_i$):** Probabilitățile corespunzătoare ($P(X = x_i)$).

**Regula de aur:** Suma probabilităților de jos trebuie să fie **obligatoriu 1**.
$$p_1 + p_2 + \dots + p_n = 1$$

**Exemplu concret:**
Aruncăm un zar. $X$ este numărul apărut.
Repartiția lui $X$ este:
$$X \sim \begin{pmatrix} 1 & 2 & 3 & 4 & 5 & 6 \\ 1/6 & 1/6 & 1/6 & 1/6 & 1/6 & 1/6 \end{pmatrix}$$

---

### 2. Dacă variabila este CONTINUĂ (Intervale)

_(Exemple: timp, înălțime, temperatură, cantitate)_

Aici nu poți face un tabel, pentru că între 1 și 2 există o infinitate de numere (1.1, 1.01, 1.001...). Nu poți lista toate valorile.

Aici, repartiția este dată de o **FORMULĂ** numită **Densitate de Probabilitate ($f(x)$)**.

**Cum arată:**
$$f(x) = \begin{cases} \text{formula} & \text{dacă } x \in \text{interval} \\ 0 & \text{în rest} \end{cases}$$

**Regula de aur:** Aria de sub graficul funcției (integrala totală) trebuie să fie **1**.
$$\int_{-\infty}^{+\infty} f(x) dx = 1$$

**Exemplu concret (Exponențială):**
Timpul de așteptare la coadă.
$$f(x) = 0.2 e^{-0.2x}, \text{ pentru } x \ge 0$$
Aceasta este "repartiția" variabilei.

---

### Ce trebuie să scrii la EXAMEN când cerința este:

**"Determinați repartiția v.a. X"**

1.  **Dacă e problemă cu bile/urne/monede (Discretă):**

    - Trebuie să identifici toate valorile posibile $k$ ($0, 1, 2...$).
    - Calculezi probabilitatea pentru fiecare: $P(X=0), P(X=1)...$
    - **Răspunsul final:** Desenezi tabelul (matricea) cu valorile sus și probabilitățile jos.

2.  **Dacă e problemă cu funcții/intervale (Continuă):**
    - Trebuie să identifici tipul funcției (ex: $1+ax$).
    - De obicei ți se cere să afli o constantă necunoscută (ca $a$ sau $k$ din testele tale) folosind integrala egală cu 1.
    - **Răspunsul final:** Scrii funcția $f(x)$ completă, cu numărul aflat în loc de literă.

### Rezumat vizual

| Tip Variabilă         | Cum arată repartiția?                                    | Ce trebuie să verifici?   |
| :-------------------- | :------------------------------------------------------- | :------------------------ |
| **Discretă** (Numere) | **Tabel** $\begin{pmatrix} \dots \\ \dots \end{pmatrix}$ | Suma $p_i = 1$            |
| **Continuă** (Măsuri) | **Funcție** $f(x) = \dots$                               | Integrala $\int f(x) = 1$ |

Iată explicația detaliată a modului în care am ajuns la acele cifre și la acea formulă.

Totul pleacă de la cuvintele cheie: **"Bile cu revenire"**.

### 1. Cum am calculat $p$ (Probabilitatea de succes)?

În această problemă, "Succes" înseamnă să extragem o bilă **Roz**.

- **Număr total de bile:** $150 \text{ (Roz)} + 100 \text{ (Mov)} = \mathbf{250}$.
- **Număr cazuri favorabile (Roz):** $150$.

Calculăm probabilitatea unei singure extrageri:
$$p = \frac{\text{Număr Roz}}{\text{Total}} = \frac{150}{250}$$

Simplificăm fracția (tăiem zerourile și împărțim la 5):
$$\frac{15}{25} = \frac{3}{5} = \mathbf{0.6}$$

Deci, șansa să nimerești o bilă roz la o extragere este **0.6 (sau 60%)**.
Implicit, șansa să **NU** fie roz (adică să fie Mov) este:
$$q = 1 - p = 1 - 0.6 = \mathbf{0.4}$$

---

### 2. De ce am ales formula Binomială?

Avem 3 indicii clare care ne trimit la schema Binomială:

1.  **"Cu revenire":** După ce scoatem o bilă, o punem înapoi. Asta înseamnă că la fiecare extragere, șansele rămân aceleași (mereu 0.6). Urna nu se "golește".
2.  **Două rezultate posibile:** Ori e Roz, ori NU e Roz (e Mov).
3.  **Număr fix de încercări:** Se extrag exact $n = 5$ bile.

Formula generală pentru Binomială ($X \sim Bin(n, p)$) este:
$$P(X=k) = C_n^k \cdot p^k \cdot (1-p)^{n-k}$$

Unde:

- **$C_n^k$ (Combinări):** Ne spune în câte moduri putem aranja bilele (ex: Roz-Mov-Roz e diferit de Mov-Roz-Roz).
- **$p^k$:** Probabilitatea să avem $k$ bile Roz.
- **$(1-p)^{n-k}$:** Probabilitatea ca restul bilelor să fie Mov.

---

### 3. Aplicarea pe problema ta

Am înlocuit datele noastre în formulă:

- $n = 5$
- $p = 0.6$
- $1-p = 0.4$

A rezultat formula "Repartiției" (adică regula după care se calculează probabilitatea pentru orice număr $k$ de bile roz):

$$P(X=k) = C_5^k \cdot (0.6)^k \cdot (0.4)^{5-k}$$

**Ce înseamnă "$k \in \{0..5\}$"?**
Înseamnă că $X$ (numărul de bile roz) poate lua doar valorile:

- 0 (nicio bilă roz)
- 1 (o bilă roz)
- 2 (două bile roz)
- 3 (trei bile roz)
- 4 (patru bile roz)
- 5 (toate roz)

### Dacă ți se cere tabelul de repartiție complet:

Trebuie să calculezi formula de mai sus pentru fiecare $k$:

- **k=0:** $C_5^0 (0.6)^0 (0.4)^5 = 1 \cdot 1 \cdot 0.01024 = 0.01024$
- **k=1:** $C_5^1 (0.6)^1 (0.4)^4 = 5 \cdot 0.6 \cdot 0.0256 = 0.0768$
- ... și tot așa până la 5.

La final, tabelul ar arăta așa:
$$X \sim \begin{pmatrix} 0 & 1 & 2 & 3 & 4 & 5 \\ 0.01024 & 0.0768 & 0.2304 & 0.3456 & 0.2592 & 0.07776 \end{pmatrix}$$

_(Suma numerelor de jos trebuie să dea 1)._
