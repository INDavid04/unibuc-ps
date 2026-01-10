Aceasta este partea care sperie pe toată lumea, dar e de fapt cea mai simplă dacă știi "să joci avioane" (să citești pe linii și coloane).

Hai să demitizăm **Tabelul Laplace** (sau Tabelul Distribuției Normale Standard).

### Ce este acest tabel?

Matematicienii au calculat deja integrala aia complicată ($e^{-x^2}...$) pentru toate valorile posibile și le-au pus într-un tabel, ca să nu stai tu să integrezi la examen.

Tabelul îți spune: **"Câtă % din suprafața clopotului se află în STÂNGA valorii tale Z?"**

---

### CUM SE CITEȘTE (Metoda "Avioane")

Să luăm exemplul nostru: **Z = 2**.
În limbaj de tabel, asta înseamnă **2.00**.

Imaginează-ți că tabelul arată așa (am tăiat o bucățică din el):

| Z (Linii) | 0.00       | 0.01   | 0.02   | ... |
| :-------- | :--------- | :----- | :----- | :-- |
| ...       | ...        | ...    | ...    | ... |
| **1.9**   | 0.9713     | 0.9719 | 0.9726 | ... |
| **2.0**   | **0.9772** | 0.9778 | 0.9783 | ... |
| **2.1**   | 0.9821     | ...    | ...    | ... |

**Pasul 1: Desparți numărul Z**
Ai $Z = 2.00$.

- Primele două cifre (partea întreagă și prima zecimală) îți dau **LINIA**: **2.0**
- A doua zecimală îți dă **COLOANA**: **0.00**

**Pasul 2: Intersectezi Linia cu Coloana**
Te duci pe linia **2.0** și te oprești la coloana **0.00**.
Acolo găsești numărul magic: **0.9772**.

---

### Un alt exemplu rapid (ca să fii sigur)

Să zicem că îți dădea $Z = 1.24$.

1.  Cauți **LINIA 1.2**.
2.  Cauți **COLOANA 0.04**.
3.  Intersecția lor îți dă probabilitatea (de exemplu 0.8925).

---

### CAPCANA: Ce reprezintă acest 0.9772?

Aici greșesc majoritatea studenților!

- Tabelul îți dă mereu aria din **STÂNGA** (adică probabilitatea să fii **MAI MIC** decât Z).
- Deci: $P(Z < 2) = 0.9772$.
  _(Traducere: 97.72% dintre bărbați sunt mai scunzi de 1.81m)_.

**Dar problema ta cerea "MAI MARE" ($X > 181$).**

Deoarece toată aria de sub clopot este **1** (sau 100%), aria din dreapta este:
$$1 - \text{Stânga}$$
$$1 - 0.9772 = 0.0228$$

---

### Rezumat vizual:

1.  Calculezi $Z = \frac{X - m}{\sigma}$. (Ți-a dat 2).
2.  Iei foaia cu tabelul (se dă la examen sau e la finalul culegerii).
3.  Pui degetul pe linia 2.0 și coloana 0.00.
4.  Găsești 0.9772.
5.  Dacă cerința e "mai mic", ăla e răspunsul.
6.  Dacă cerința e "mai mare", faci $1 - 0.9772$.

_Notă: Există unele tabele mai vechi (tabelul funcției $\Phi$) care pornesc de la jumătate (de la 0). Acolo în dreptul lui 2 vei găsi **0.4772**. Dacă ai acel tabel, trebuie să aduni tu 0.5 (jumătatea din stânga). $0.5 + 0.4772 = 0.9772$. Rezultatul e același._
