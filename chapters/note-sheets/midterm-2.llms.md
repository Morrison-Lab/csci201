# Midterm 2 note sheet

Code

Induction, loop invariants, recursion, recurrences and growth

Published

Last modified: 2026-11-23 14:14:21 (PST)

This sheet comes printed with Midterm 2. You may not bring your own notes, so study with this sheet. It leaves out some results; the full definitions are in the [notes](https://morrison-lab.github.io/mcs/). [Download the PDF](midterm-2.pdf) to print it.

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

Table 1: Integers.

## Induction

|  |  |
|----|----|
| Sum | $\sum_{i=1}^{n} a_i = a_1 + a_2 + \cdots + a_n$ |
| [Induction](https://morrison-lab.github.io/mcs/chapters/induction.html#def-proof-by-induction) ($b, k, n \in \mathbb{Z}$) | $(P(b) \land (\forall k \ge b, (P(k) \Rightarrow P(k + 1)))) \Rightarrow (\forall n \ge b, P(n))$ |
| Base case | $P(b)$ |
| Inductive step | assume $P(k)$ (the induction hypothesis), show $P(k + 1)$ |

Table 2: Induction.

## Strong induction

|  |  |
|----|----|
| [Strong induction](https://morrison-lab.github.io/mcs/chapters/induction.html#def-strong-induction) ($b, c, k, n \in \mathbb{Z}$) | $(P(b) \land \cdots \land P(c) \land (\forall k \ge c, ((P(b) \land \cdots \land P(k)) \Rightarrow P(k + 1)))) \Rightarrow (\forall n \ge b, P(n))$ |

Table 3: Strong induction.

## Loop invariants

|  |  |
|----|----|
| [Loop invariant](https://morrison-lab.github.io/mcs/chapters/loop-invariants.html#def-loop-invariant) $I$, [guard](https://morrison-lab.github.io/mcs/chapters/loop-invariants.html#def-loop-guard) $G$ | $I$ is true each time $G$ is tested |
| Initialization | $I$ holds when $G$ is first tested |
| Maintenance | $(I \land G)$ before a pass through the body $\Rightarrow$ $I$ after it |
| Termination | the loop stops, and $(I \land (\neg G)) \Rightarrow$ the result |

Table 4: Loop invariants.

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

Table 5: Racket.

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

Table 6: Recurrences.

## Growth of functions

|  |  |
|----|----|
| [Big-O](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-big-o) ($c \in \mathbb{R}$; $N, n \in \mathbb{Z}$) | $(f(n) = O(g(n))) \Leftrightarrow (\exists c > 0, \exists N, \forall n \ge N, \mathopen{}\left|f(n)\right|\mathclose{} \le c \mathopen{}\left|g(n)\right|\mathclose{})$ |
| [Big-Omega](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-big-omega) | $(f(n) = \Omega(g(n))) \Leftrightarrow (\exists c > 0, \exists N, \forall n \ge N, \mathopen{}\left|f(n)\right|\mathclose{} \ge c \mathopen{}\left|g(n)\right|\mathclose{})$ |
| [Big-Theta](https://morrison-lab.github.io/mcs/chapters/recurrences-growth.html#def-big-theta) | $(f(n) = \Theta(g(n))) \Leftrightarrow ((f(n) = O(g(n))) \land (f(n) = \Omega(g(n))))$ |
| Witnesses | the numbers $c$ and $N$ |

Table 7: Growth of functions.

Back to top
