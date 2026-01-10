Hai să analizăm exact logica pentru punctul **b)**, pentru că aici se folosește una dintre cele mai puternice "scurtături" din teoria probabilităților: **Evenimentul Contrar**.

### Contextul problemei

- **Total produse ($N$):** 100
- **Produse defecte ($M$):** 5
- **Produse bune:** 95
- **Extragem ($n$):** 5 bucăți.

Regula din text: _"Dacă se găsește un produs defect, lotul se respinge."_

---

### Ce înseamnă "Lotul se respinge"?

Matematic, asta înseamnă că în cele 5 produse extrase am găsit **1, 2, 3, 4 sau 5 defecte**. Orice număr de defecte diferit de zero duce la respingere.

Avem două metode să calculăm asta.

#### Metoda 1: Calea Grea (Suma directă)

Ar trebui să calculăm probabilitatea pentru fiecare caz în care lotul e respins și să le adunăm:
$$P(\text{Respins}) = P(1 \text{ defect}) + P(2 \text{ defecte}) + P(3 \text{ defecte}) + P(4 \text{ defecte}) + P(5 \text{ defecte})$$

Ar însemna să aplici formula cu Combinări de 5 ori! E un coșmar de calcul:

- $P(X=1) = \frac{C_5^1 \cdot C_{95}^4}{C_{100}^5}$
- $P(X=2) = \frac{C_5^2 \cdot C_{95}^3}{C_{100}^5}$
- ... și tot așa până la 5.

#### Metoda 2: Calea Deșteaptă (Evenimentul Contrar)

În universul acestei probleme, există doar două situații posibile:

1.  Găsim **0 defecte** (Lotul e ACCEPTAT).
2.  Găsim **$\ge$ 1 defecte** (Lotul e RESPINS).

Cele două acoperă totul. Suma probabilităților lor trebuie să fie **1** (100%).

$$P(\text{Acceptat}) + P(\text{Respins}) = 1$$

De aici scoatem formula pe care am folosit-o:
$$P(\text{Respins}) = 1 - P(\text{Acceptat})$$

Deoarece la punctul **a)** am calculat deja $P(\text{Acceptat})$ (adică $P(X=0)$), e mult mai simplu să scădem acel număr din 1 decât să calculăm celelalte 5 cazuri.

### Calculul pas cu pas:

1.  **De la punctul a)** știm că probabilitatea să NU găsim niciun defect este:
    $$P(X=0) \approx 0.769$$
    _(Adică sunt 76.9% șanse ca lotul să fie bun)._

2.  **Pentru punctul b)**, aplicăm scăderea:
    $$P(\text{Respins}) = 1 - 0.769$$
    $$P(\text{Respins}) = 0.231$$

### Concluzie

Am rezolvat punctul b) folosind logica: **"Care este șansa să se întâmple ceva rău? Este 1 minus șansa să nu se întâmple nimic rău."**

Hai să analizăm exact logica pentru punctul **b)**, pentru că aici se folosește una dintre cele mai puternice "scurtături" din teoria probabilităților: **Evenimentul Contrar**.

### Contextul problemei

- **Total produse ($N$):** 100
- **Produse defecte ($M$):** 5
- **Produse bune:** 95
- **Extragem ($n$):** 5 bucăți.

Regula din text: _"Dacă se găsește un produs defect, lotul se respinge."_

---

### Ce înseamnă "Lotul se respinge"?

Matematic, asta înseamnă că în cele 5 produse extrase am găsit **1, 2, 3, 4 sau 5 defecte**. Orice număr de defecte diferit de zero duce la respingere.

Avem două metode să calculăm asta.

#### Metoda 1: Calea Grea (Suma directă)

Ar trebui să calculăm probabilitatea pentru fiecare caz în care lotul e respins și să le adunăm:
$$P(\text{Respins}) = P(1 \text{ defect}) + P(2 \text{ defecte}) + P(3 \text{ defecte}) + P(4 \text{ defecte}) + P(5 \text{ defecte})$$

Ar însemna să aplici formula cu Combinări de 5 ori! E un coșmar de calcul:

- $P(X=1) = \frac{C_5^1 \cdot C_{95}^4}{C_{100}^5}$
- $P(X=2) = \frac{C_5^2 \cdot C_{95}^3}{C_{100}^5}$
- ... și tot așa până la 5.

#### Metoda 2: Calea Deșteaptă (Evenimentul Contrar)

În universul acestei probleme, există doar două situații posibile:

1.  Găsim **0 defecte** (Lotul e ACCEPTAT).
2.  Găsim **$\ge$ 1 defecte** (Lotul e RESPINS).

Cele două acoperă totul. Suma probabilităților lor trebuie să fie **1** (100%).

$$P(\text{Acceptat}) + P(\text{Respins}) = 1$$

De aici scoatem formula pe care am folosit-o:
$$P(\text{Respins}) = 1 - P(\text{Acceptat})$$

Deoarece la punctul **a)** am calculat deja $P(\text{Acceptat})$ (adică $P(X=0)$), e mult mai simplu să scădem acel număr din 1 decât să calculăm celelalte 5 cazuri.

### Calculul pas cu pas:

1.  **De la punctul a)** știm că probabilitatea să NU găsim niciun defect este:
    $$P(X=0) \approx 0.769$$
    _(Adică sunt 76.9% șanse ca lotul să fie bun)._

2.  **Pentru punctul b)**, aplicăm scăderea:
    $$P(\text{Respins}) = 1 - 0.769$$
    $$P(\text{Respins}) = 0.231$$

### Concluzie

Am rezolvat punctul b) folosind logica: **"Care este șansa să se întâmple ceva rău? Este 1 minus șansa să nu se întâmple nimic rău."**
