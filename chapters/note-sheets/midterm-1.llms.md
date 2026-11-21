# Midterm 1 note sheet

Code

Logic, integers, sets and induction

Published

Last modified: 2026-11-20 17:02:44 (PST)

This sheet comes printed with Midterm 1. You may not bring your own notes, so study with this sheet. It leaves out some results; the full definitions are in the [notes](https://morrison-lab.github.io/mcs/). [Download the PDF](midterm-1.pdf) to print it.

## Logic

| $P$ | $Q$ | $\neg P$ | $P \land Q$ | $P \lor Q$ | $P \Rightarrow Q$ | $P \Leftrightarrow Q$ |
|:--:|:--:|:--:|:--:|:--:|:--:|:--:|
| T | T | F | T | T | T | T |
| T | F | F | F | T | F | F |
| F | T | T | F | T | T | F |
| F | F | T | F | F | T | T |

Table 1: [Connectives](https://morrison-lab.github.io/mcs/chapters/propositional-logic.html#def-logical-connective).

|  |  |
|----|----|
| [Logically equivalent](https://morrison-lab.github.io/mcs/chapters/equivalence-negation.html#def-logically-equivalent) | $A \equiv B$: $A$ and $B$ have the same truth value in every row |
| [Double negation](https://morrison-lab.github.io/mcs/chapters/equivalence-negation.html#thm-double-negation) | $(\neg \neg P) \equiv P$ |
| [De Morgan](https://morrison-lab.github.io/mcs/chapters/equivalence-negation.html#thm-de-morgan-logic) | $(\neg (P \land Q)) \equiv ((\neg P) \lor (\neg Q))$ |
|  | $(\neg (P \lor Q)) \equiv ((\neg P) \land (\neg Q))$ |
| [Conditional](https://morrison-lab.github.io/mcs/chapters/equivalence-negation.html#cor-conditional-as-or) | $(P \Rightarrow Q) \equiv ((\neg P) \lor Q)$ |
| [Biconditional](https://morrison-lab.github.io/mcs/chapters/iff-existence-disproof.html#thm-biconditional-split) | $(P \Leftrightarrow Q) \equiv ((P \Rightarrow Q) \land (Q \Rightarrow P))$ |
| [Distributive](https://morrison-lab.github.io/mcs/chapters/equivalence-negation.html#thm-distributive) | $(P \land (Q \lor R)) \equiv ((P \land Q) \lor (P \land R))$ |
|  | $(P \lor (Q \land R)) \equiv ((P \lor Q) \land (P \lor R))$ |
| [Converse](https://morrison-lab.github.io/mcs/chapters/propositional-logic.html#def-converse) of $P \Rightarrow Q$ | $Q \Rightarrow P$ |
| [Contrapositive](https://morrison-lab.github.io/mcs/chapters/contrapositive-contradiction.html#def-contrapositive) of $P \Rightarrow Q$ | $(\neg Q) \Rightarrow (\neg P)$ |
|  | $((\neg Q) \Rightarrow (\neg P)) \equiv (P \Rightarrow Q)$ |

Table 2: Laws.

|  |  |
|----|----|
| [For all](https://morrison-lab.github.io/mcs/chapters/predicates-quantifiers.html#def-universal-quantifier) | $\forall x \in D, P(x)$ |
| [There exists](https://morrison-lab.github.io/mcs/chapters/predicates-quantifiers.html#def-existential-quantifier) | $\exists x \in D, P(x)$ |
| [Negating a quantifier](https://morrison-lab.github.io/mcs/chapters/equivalence-negation.html#thm-negate-quantifiers) | $(\neg (\forall x \in D, P(x))) \equiv (\exists x \in D, (\neg P(x)))$ |
|  | $(\neg (\exists x \in D, P(x))) \equiv (\forall x \in D, (\neg P(x)))$ |
| [Counterexample](https://morrison-lab.github.io/mcs/chapters/predicates-quantifiers.html#def-counterexample) to $\forall x \in D, P(x)$ | an $x \in D$ with $\neg P(x)$ |

Table 3: Quantifiers.

## Integers

|  |  |
|----|----|
| [Integers](https://morrison-lab.github.io/mcs/chapters/direct-proof.html#def-integers), rationals, [reals](https://morrison-lab.github.io/mcs/chapters/sets.html#def-real-numbers) | $\mathbb{Z}$, $\mathbb{Q}$, $\mathbb{R}$ |
| [Even](https://morrison-lab.github.io/mcs/chapters/direct-proof.html#def-even-odd) | $(n \text{ even}) \Leftrightarrow (\exists k \in \mathbb{Z}, n = 2 k)$ |
| [Odd](https://morrison-lab.github.io/mcs/chapters/direct-proof.html#def-odd) | $(n \text{ odd}) \Leftrightarrow (\exists k \in \mathbb{Z}, n = 2 k + 1)$ |
| Parity | $\forall n \in \mathbb{Z}, (((n \text{ even}) \lor (n \text{ odd})) \land (\neg ((n \text{ even}) \land (n \text{ odd}))))$ |
| Closure | $(a, b \in \mathbb{Z}) \Rightarrow ((a + b \in \mathbb{Z}) \land (a - b \in \mathbb{Z}) \land (a b \in \mathbb{Z}))$ |
| [Divides](https://morrison-lab.github.io/mcs/chapters/direct-proof.html#def-divides) ($a, b \in \mathbb{Z}$) | $(a \mid b) \Leftrightarrow (\exists k \in \mathbb{Z}, b = a k)$ |
| [Congruence](https://morrison-lab.github.io/mcs/chapters/contrapositive-contradiction.html#def-congruence) ($a, b, n \in \mathbb{Z}$, $n > 0$) | $(a \equiv b \pmod{n}) \Leftrightarrow (n \mid (a - b))$ |
| Remainder $r$ of $a$ by $n$ ($a, n \in \mathbb{Z}$, $n > 0$) | the unique $r$ with $\exists q \in \mathbb{Z}, ((a = q n + r) \land (0 \le r < n))$ |
| [Rational](https://morrison-lab.github.io/mcs/chapters/contrapositive-contradiction.html#def-rational-numbers) | $(x \in \mathbb{Q}) \Leftrightarrow (\exists a, b \in \mathbb{Z}, ((b \ne 0) \land (x = a / b)))$ |

Table 4: Integers.

## Sets

|  |  |
|----|----|
| [Element](https://morrison-lab.github.io/mcs/chapters/sets.html#def-set) | $x \in A$ |
| [Empty set](https://morrison-lab.github.io/mcs/chapters/sets.html#def-empty-set), [cardinality](https://morrison-lab.github.io/mcs/chapters/sets.html#def-cardinality) | $\emptyset$, ${\mathopen{}\left|A\right|\mathclose{}}$ |
| [Subset](https://morrison-lab.github.io/mcs/chapters/sets.html#def-subset) | $(A \subseteq B) \Leftrightarrow (\forall x, ((x \in A) \Rightarrow (x \in B)))$ |
| [Set equality](https://morrison-lab.github.io/mcs/chapters/set-proofs.html#thm-double-inclusion) | $(A = B) \Leftrightarrow ((A \subseteq B) \land (B \subseteq A))$ |
| [Union](https://morrison-lab.github.io/mcs/chapters/sets.html#def-union) | $A \cup B = {\mathopen{}\left\{x : (x \in A) \lor (x \in B)\right\}\mathclose{}}$ |
| [Intersection](https://morrison-lab.github.io/mcs/chapters/sets.html#def-intersection) | $A \cap B = {\mathopen{}\left\{x : (x \in A) \land (x \in B)\right\}\mathclose{}}$ |
| [Difference](https://morrison-lab.github.io/mcs/chapters/sets.html#def-set-difference) | $A - B = {\mathopen{}\left\{x : (x \in A) \land (x \notin B)\right\}\mathclose{}}$ |
| [Power set](https://morrison-lab.github.io/mcs/chapters/sets.html#def-power-set) | ${\mathcal{P}\mathopen{}\left(A\right)\mathclose{}} = {\mathopen{}\left\{S : S \subseteq A\right\}\mathclose{}}$ |
| [Cartesian product](https://morrison-lab.github.io/mcs/chapters/sets.html#def-cartesian-product) | $A \times B = {\mathopen{}\left\{(a, b) : (a \in A) \land (b \in B)\right\}\mathclose{}}$ |

Table 5: Sets.

## Induction

|  |  |
|----|----|
| Sum | $\sum_{i=1}^{n} a_i = a_1 + a_2 + \cdots + a_n$ |
| [Induction](https://morrison-lab.github.io/mcs/chapters/induction.html#def-proof-by-induction) ($b, k, n \in \mathbb{Z}$) | $(P(b) \land (\forall k \ge b, (P(k) \Rightarrow P(k + 1)))) \Rightarrow (\forall n \ge b, P(n))$ |
| Base case | $P(b)$ |
| Inductive step | assume $P(k)$ (the induction hypothesis), show $P(k + 1)$ |

Table 6: Induction.

Back to top
