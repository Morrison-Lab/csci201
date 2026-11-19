# Final exam note sheet

Code

The whole course: the tables of the three midterm sheets

Published

Last modified: 2026-11-19 02:23:37 (PST)

This sheet comes printed with the final exam. You may not bring your own notes, so study with this sheet. It leaves out some results; the full definitions are in the [notes](https://morrison-lab.github.io/mcs/). [Download the PDF](final.pdf) to print it.

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

## Strong induction

|  |  |
|----|----|
| [Strong induction](https://morrison-lab.github.io/mcs/chapters/induction.html#def-strong-induction) ($b, c, k, n \in \mathbb{Z}$) | $(P(b) \land \cdots \land P(c) \land (\forall k \ge c, ((P(b) \land \cdots \land P(k)) \Rightarrow P(k + 1)))) \Rightarrow (\forall n \ge b, P(n))$ |

Table 7: Strong induction.

## Loop invariants

|  |  |
|----|----|
| [Loop invariant](https://morrison-lab.github.io/mcs/chapters/loop-invariants.html#def-loop-invariant) $I$, [guard](https://morrison-lab.github.io/mcs/chapters/loop-invariants.html#def-loop-guard) $G$ | $I$ is true each time $G$ is tested |
| Initialization | $I$ holds when $G$ is first tested |
| Maintenance | $(I \land G)$ before a pass through the body $\Rightarrow$ $I$ after it |
| Termination | the loop stops, and $(I \land (\neg G)) \Rightarrow$ the result |

Table 8: Loop invariants.

## Racket

|  |  |
|----|----|
| [Define a function](https://morrison-lab.github.io/mcs/chapters/functional-programming.html#def-racket-define) | `(define (f x y) body)` |
| [Conditionals](https://morrison-lab.github.io/mcs/chapters/functional-programming.html#def-if-cond) | `(if test then-expr else-expr)` |
|  | `(cond [test1 expr1] [test2 expr2] [else expr3])` |
| [Lists](https://morrison-lab.github.io/mcs/chapters/recursion.html#def-list) | `'()` empty, `(list 1 2 3)` gives `'(1 2 3)` |
|  | `(cons x lst)` puts `x` in front, `(empty? lst)` is `#t` if `lst` is `'()` |
|  | `(first lst)`, `(second lst)`, `(third lst)`, `(rest lst)` all but the first |
| Arithmetic | `(+ a b) (- a b) (* a b) (quotient n d) (remainder n d)` |
| Comparison | `(= a b) (< a b) (<= a b) (> a b) (>= a b)` |
|  | `(equal? a b)` is `#t` if `a` and `b` are the same value, lists included |
| Logic | `(and a b) (or a b) (not a)` |

Table 9: Racket.

## Recurrences

|  |  |
|----|----|
| [Recurrence relation](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-recurrence-relation) | each term from earlier terms, starting from initial terms |
| [Iteration](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-iteration) | substitute repeatedly, write the result after $j$ steps, choose $j$ to reach an initial term |
| Geometric sum ($r \ne 1$) | $1 + r + \cdots + r^k = \dfrac{r^{k + 1} - 1}{r - 1}$ |
| Arithmetic sum | $1 + 2 + \cdots + n = \dfrac{n (n + 1)}{2}$ |
| [Logarithms](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-logarithm) | $2^{\log_2 n} = n$ |
|  | $\log_2 (x y) = \log_2 x + \log_2 y$ |
|  | $\log_2 (x^k) = k \log_2 x$ |

Table 10: Recurrences.

## Growth of functions

|  |  |
|----|----|
| [Big-O](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-big-o) ($c \in \mathbb{R}$; $N, n \in \mathbb{Z}$) | $(f(n) = O(g(n))) \Leftrightarrow (\exists c > 0, \exists N, \forall n \ge N, \mathopen{}\left|f(n)\right|\mathclose{} \le c \mathopen{}\left|g(n)\right|\mathclose{})$ |
| [Big-Omega](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-big-omega) | $(f(n) = \Omega(g(n))) \Leftrightarrow (\exists c > 0, \exists N, \forall n \ge N, \mathopen{}\left|f(n)\right|\mathclose{} \ge c \mathopen{}\left|g(n)\right|\mathclose{})$ |
| [Big-Theta](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-big-theta) | $(f(n) = \Theta(g(n))) \Leftrightarrow ((f(n) = O(g(n))) \land (f(n) = \Omega(g(n))))$ |
| Witnesses | the numbers $c$ and $N$ |

Table 11: Growth of functions.

## Relations and functions

|  |  |
|----|----|
| [Relation](https://morrison-lab.github.io/mcs/chapters/relations.html#def-relation) on $A$ | $R \subseteq A \times A$, and $(a \mathrel{R} b) \Leftrightarrow ((a, b) \in R)$ |
| [Reflexive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-reflexive) | $\forall a \in A, a \mathrel{R} a$ |
| [Symmetric](https://morrison-lab.github.io/mcs/chapters/relations.html#def-symmetric-relation) | $\forall a, b \in A, ((a \mathrel{R} b) \Rightarrow (b \mathrel{R} a))$ |
| [Transitive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-transitive) | $\forall a, b, c \in A, (((a \mathrel{R} b) \land (b \mathrel{R} c)) \Rightarrow (a \mathrel{R} c))$ |
| [Antisymmetric](https://morrison-lab.github.io/mcs/chapters/relations.html#def-antisymmetric) | $\forall a, b \in A, (((a \mathrel{R} b) \land (b \mathrel{R} a)) \Rightarrow (a = b))$ |
| [Equivalence relation](https://morrison-lab.github.io/mcs/chapters/relations.html#def-equivalence-relation) | reflexive, symmetric and transitive |
| [Equivalence class](https://morrison-lab.github.io/mcs/chapters/relations.html#def-equivalence-class) | $[a] = {\mathopen{}\left\{b \in A : b \sim a\right\}\mathclose{}}$ |
| [Injective](https://morrison-lab.github.io/mcs/chapters/relations.html#def-injective) $f : A \to B$ | $\forall a_1, a_2 \in A, ((f(a_1) = f(a_2)) \Rightarrow (a_1 = a_2))$ |
| [Surjective](https://morrison-lab.github.io/mcs/chapters/relations.html#def-surjective) | $\forall b \in B, \exists a \in A, f(a) = b$ |
| [Bijective](https://morrison-lab.github.io/mcs/chapters/relations.html#def-bijective) | injective and surjective |
| [Inverse](https://morrison-lab.github.io/mcs/chapters/relations.html#def-inverse-function) of a bijection | $f^{-1} : B \to A$ with $(f^{-1}(b) = a) \Leftrightarrow (f(a) = b)$ |
| [Floor](https://morrison-lab.github.io/mcs/chapters/loop-invariants.html#def-floor) | $\mathopen{}\left\lfloor x\right\rfloor\mathclose{} = \max {\mathopen{}\left\{n \in \mathbb{Z}: n \le x\right\}\mathclose{}}$ |

Table 12: Relations and functions.

## Graphs

|  |  |
|----|----|
| [Degree](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-degree) | $\deg(v)$: edges with endpoint $v$, a loop counting twice |
| [Walk](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-walk) from $u$ to $v$ | $v_0, e_1, v_1, \ldots, e_n, v_n$, $v_0 = u$, $v_n = v$, $e_i$ joins $v_{i - 1}$ and $v_i$; length $n$ |
| [Trail](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-trail), [path](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-graph-path) | a walk with no repeated edge; with no repeated vertex |
| [Circuit](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-circuit) | a trail of length $\ge 1$ from a vertex to itself |
| [Connected](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-connected) | a walk between every two vertices |
| [Euler circuit](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-euler-circuit) | a circuit that contains every edge |
| [Euler trail](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-euler-trail) | a trail from $u$ to $v \ne u$ that contains every edge |
| [Hamiltonian cycle](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-hamiltonian-cycle) | a circuit that visits every vertex once, then returns to its start |
| [Bipartite](https://morrison-lab.github.io/mcs/chapters/graphs.html#def-bipartite) | $V = V_1 \cup V_2$ with $V_1 \cap V_2 = \emptyset$, and every edge has one endpoint in $V_1$ and one in $V_2$ |

Table 13: Graphs.

``` text
procedure bfs(G, s)                       procedure dfs(G, v)   // start: dfs(G, s)
    mark s, and set dist[s] := 0              mark v
    Q := a queue containing only s            for each vertex u in the list of v, in order
    while Q is not empty                          if u is not marked
        v := remove the front of Q                    dfs(G, u)
        for each vertex u in the list of v, in order
            if u is not marked
                mark u, and set dist[u] := dist[v] + 1
                add u to the back of Q
```

## Finite automata

|  |  |
|----|----|
| [DFA](https://morrison-lab.github.io/mcs/chapters/automata.html#def-dfa) | $M = (S, \Sigma, \delta, s_0, F)$: states, alphabet, $\delta : S \times \Sigma \to S$, initial state, accepting states |
| [Transition table](https://morrison-lab.github.io/mcs/chapters/automata.html#def-transition-table) | $\to$ marks the initial state, $*$ each accepting state |
| Empty string | $\lambda$ |
| [Run](https://morrison-lab.github.io/mcs/chapters/automata.html#def-run) on $w = x_1 \cdots x_n$ | $r_0, \ldots, r_n$ with $r_0 = s_0$ and $r_i = \delta(r_{i - 1}, x_i)$ |
| [Accepts](https://morrison-lab.github.io/mcs/chapters/automata.html#def-accept) $w$ | $r_n \in F$ |
| [Language](https://morrison-lab.github.io/mcs/chapters/automata.html#def-automaton-language) | $L(M) = {\mathopen{}\left\{w : M \text{ accepts } w\right\}\mathclose{}}$ |

Table 14: Finite automata.

## Trees

|  |  |
|----|----|
| [Tree](https://morrison-lab.github.io/mcs/chapters/trees.html#def-tree) | a connected graph with no cycles |
| [Edges of a tree](https://morrison-lab.github.io/mcs/chapters/trees.html#thm-tree-edges) | a tree with $n$ vertices has $n - 1$ edges |
| [Binary tree](https://morrison-lab.github.io/mcs/chapters/trees.html#def-binary-tree) | $\mathtt{nil}$, or $\operatorname{node}(x, L, R)$: root label $x$, subtrees $L$ and $R$ |
| In Racket | $\mathtt{nil}$ is `'()`, $\operatorname{node}(x, L, R)$ is `(list x L R)` |
| [Preorder](https://morrison-lab.github.io/mcs/chapters/trees.html#def-preorder) | root, preorder of $L$, preorder of $R$ |
| [Inorder](https://morrison-lab.github.io/mcs/chapters/trees.html#def-inorder) | inorder of $L$, root, inorder of $R$ |
| [Postorder](https://morrison-lab.github.io/mcs/chapters/trees.html#def-postorder) | postorder of $L$, postorder of $R$, root |
| [Level](https://morrison-lab.github.io/mcs/chapters/trees.html#def-tree-level), [height](https://morrison-lab.github.io/mcs/chapters/trees.html#def-tree-height) | the root is at level 0, a child one below its parent; height is the largest level |
| [Leaf](https://morrison-lab.github.io/mcs/chapters/trees.html#def-tree-leaf) | a vertex with no children |
| Leaf of a tree with no root | a vertex of degree 1 |

Table 15: Trees.

Back to top
