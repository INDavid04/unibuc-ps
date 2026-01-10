Felicitări că ai rezolvat deja tabelul (punctul a)! Asta e partea cea mai grea de "buchiseală".

Hai să vedem cum se fac punctele **b, c** și **e**, pas cu pas. Voi folosi valorile din tabelul completat (verifică doar dacă îți dau la fel):

**Tabelul Completat (pentru referință):**

| X \ Y             |      2       |      4      |        8        |  Total ($p_i$)   |
| :---------------- | :----------: | :---------: | :-------------: | :--------------: |
| **0**             |   **4/16**   |  **1/16**   |      1/16       | **3/8** (=6/16)  |
| **1**             | 3/8 (=6/16)  |  **1/16**   |    **3/16**     | **5/8** (=10/16) |
| **Total ($q_j$)** | 5/8 (=10/16) | 1/8 (=2/16) | **2/8** (=4/16) |      **1**       |

---

### b) Determinați repartițiile marginale ale v.a. X și Y

**Ce trebuie să faci:**
Trebuie să "extagi" totalurile de pe margini (de aia se numesc marginale) și să le scrii ca niște tabele mici, separate.

- **Pentru X:** Te uiți doar la coloana **Total ($p_i$)**.
  Valorile lui X sunt 0 și 1.

$$X \sim \begin{pmatrix} 0 & 1 \\ \frac{3}{8} & \frac{5}{8} \end{pmatrix}$$

- **Pentru Y:** Te uiți doar la linia **Total ($q_j$)**.
  Valorile lui Y sunt 2, 4 și 8.

$$Y \sim \begin{pmatrix} 2 & 4 & 8 \\ \frac{5}{8} & \frac{1}{8} & \frac{2}{8} \end{pmatrix}$$
_(Poți simplifica $2/8$ la $1/4$, dar e ok și așa)._

---

### c) Determinați repartiția v.a. XY

**Ce trebuie să faci:**
Trebuie să construiești o variabilă nouă $Z = X \cdot Y$.

1.  Iei fiecare celulă din tabel și înmulțești valoarea lui X cu valoarea lui Y.
2.  Probabilitatea rămâne aceeași ca în celulă.
3.  Dacă obții același rezultat de mai multe ori, aduni probabilitățile.

**Calcule:**

- **Linia X=0:**

  - $0 \cdot 2 = 0$ (Probabilitate 4/16)
  - $0 \cdot 4 = 0$ (Probabilitate 1/16)
  - $0 \cdot 8 = 0$ (Probabilitate 1/16)
  - $\Rightarrow$ Avem rezultatul **0** cu probabilitatea totală $4/16 + 1/16 + 1/16 = 6/16 = \mathbf{3/8}$.

- **Linia X=1:**
  - $1 \cdot 2 = \mathbf{2}$ (Probabilitate $\mathbf{3/8}$)
  - $1 \cdot 4 = \mathbf{4}$ (Probabilitate $\mathbf{1/16}$)
  - $1 \cdot 8 = \mathbf{8}$ (Probabilitate $\mathbf{3/16}$)

**Tabelul Final pentru XY:**
Pui toate rezultatele găsite (0, 2, 4, 8) și probabilitățile lor.

$$XY \sim \begin{pmatrix} 0 & 2 & 4 & 8 \\ \frac{3}{8} & \frac{3}{8} & \frac{1}{16} & \frac{3}{16} \end{pmatrix}$$

_(Verificare: $6/16 + 6/16 + 1/16 + 3/16 = 16/16 = 1$. E corect!)_

---

### e) Stabiliți dacă X și Y sunt independente

**Ce trebuie să faci:**
Două variabile sunt independente **DOAR DACĂ** pentru **absolut toate celulele** din tabel este valabilă egalitatea:
$$P(X=x \cap Y=y) = P(X=x) \cdot P(Y=y)$$
_(Adică: Probabilitatea din interiorul celulei = Probabilitatea marginală a liniei $\times$ Probabilitatea marginală a coloanei)._

Dacă găsești **o singură celulă** unde asta nu e adevărat, atunci NU sunt independente.

**Verificare (luăm prima celulă, X=0 și Y=2):**

1.  **Din tabel (Interior):** $P(X=0 \cap Y=2) = \frac{4}{16} = \frac{1}{4} = \mathbf{0.25}$
2.  **Produsul marginalelor:** $P(X=0) \cdot P(Y=2) = \frac{3}{8} \cdot \frac{5}{8} = \frac{15}{64} \approx \mathbf{0.234}$

**Concluzie:**
Deoarece $0.25 \neq 0.234$ (adică $\frac{1}{4} \neq \frac{15}{64}$), variabilele **NU sunt independente**.

_Argumentul pe scurt:_ Deoarece $P(X=0, Y=2) \neq P(X=0) \cdot P(Y=2)$, variabilele sunt dependente.
