# Midterm 1 note sheet

Code

Logic, integers, sets and induction

Published

Last modified: 2026-11-18 20:19:57 (PST)

This is the note sheet that comes printed with Midterm 1. You may not bring your own notes, so study with this sheet. It summarizes the definitions, laws and notation that the exam uses. The full definitions, with examples, are in the [notes](https://morrison-lab.github.io/mcs/). The sheet leaves out some of the notes’ results.

To print it, download the [PDF](midterm-1.pdf).

## Logic

$\neg P$ is “not $P$”, $P \land Q$ is “$P$ and $Q$”, $P \lor Q$ is “$P$ or $Q$” (or both), $P \Rightarrow Q$ is “if $P$, then $Q$”, and $P \Leftrightarrow Q$ is “$P$ if and only if $Q$”.

$$\begin{array}{cc|ccccc}
P & Q & \neg P & P \land Q & P \lor Q & P \Rightarrow Q & P \Leftrightarrow Q \\
\hline
\text{T} & \text{T} & \text{F} & \text{T} & \text{T} & \text{T} & \text{T} \\
\text{T} & \text{F} & \text{F} & \text{F} & \text{T} & \text{F} & \text{F} \\
\text{F} & \text{T} & \text{T} & \text{F} & \text{T} & \text{T} & \text{F} \\
\text{F} & \text{F} & \text{T} & \text{F} & \text{F} & \text{T} & \text{T}
\end{array}$$

$A \equiv B$ (logically equivalent) means that $A$ and $B$ have the same truth value in every row of their truth table.

- Double negation: $\neg \neg P \equiv P$.
- De Morgan: $\neg (P \land Q) \equiv \neg P \lor \neg Q$ and $\neg (P \lor Q) \equiv \neg P \land \neg Q$.
- Conditional: $P \Rightarrow Q \equiv \neg P \lor Q$.
- Biconditional: $P \Leftrightarrow Q \equiv (P \Rightarrow Q) \land (Q \Rightarrow P)$.
- Distributive: $P \land (Q \lor R) \equiv (P \land Q) \lor (P \land R)$ and $P \lor (Q \land R) \equiv (P \lor Q) \land (P \lor R)$.

The *converse* of $P \Rightarrow Q$ is $Q \Rightarrow P$, and its *contrapositive* is $\neg Q \Rightarrow \neg P$, which is equivalent to it.

$\forall x \in D, P(x)$ is “for every $x$ in $D$, $P(x)$”, and $\exists x \in D, P(x)$ is “there is an $x$ in $D$ such that $P(x)$”. Negating moves $\neg$ inward and swaps the quantifier:

- $\neg \forall x \in D, P(x) \equiv \exists x \in D, \neg P(x)$;
- $\neg \exists x \in D, P(x) \equiv \forall x \in D, \neg P(x)$.

## Integers

$\mathbb{Z}$ is the set of integers, $\mathbb{Q}$ the set of rational numbers, and $\mathbb{R}$ the set of real numbers. For integers $a$, $b$, $k$ and $n$:

- $n$ is *even* if $n = 2 k$ for some integer $k$.
- $n$ is *odd* if $n = 2 k + 1$ for some integer $k$.
- Every integer is even or odd.
- No integer is both even and odd.
- The sum, difference and product of two integers are integers.
- $a \mid b$ ($a$ *divides* $b$) if $b = a k$ for some integer $k$.
- For a positive integer $n$, $a \equiv b \pmod{n}$ if $n \mid (a - b)$.
- For a positive integer $n$, there are unique integers $q$ and $r$ with $a = q n + r$ and $0 \le r < n$; $r$ is the *remainder* of $a$ on division by $n$.
- A real number $x$ is *rational* if $x = a / b$ for some integers $a$ and $b$ with $b \ne 0$.

A *counterexample* to $\forall x \in D, P(x)$ is an $x \in D$ for which $P(x)$ is false.

## Sets

- $x \in A$: $x$ is an element of $A$.
- $\emptyset$ is the empty set, and ${\mathopen{}\left|A\right|\mathclose{}}$ is the number of elements of a finite set $A$.
- $A \subseteq B$ if every element of $A$ is an element of $B$.
- $A = B$ if $A \subseteq B$ and $B \subseteq A$.
- $A \cup B = {\mathopen{}\left\{x : x \in A \lor x \in B\right\}\mathclose{}}$ and $A \cap B = {\mathopen{}\left\{x : x \in A \land x \in B\right\}\mathclose{}}$.
- $A - B = {\mathopen{}\left\{x : x \in A \land x \notin B\right\}\mathclose{}}$.
- ${\mathcal{P}\mathopen{}\left(A\right)\mathclose{}}$, the *power set* of $A$, is the set of all subsets of $A$.
- $A \times B = {\mathopen{}\left\{(a, b) : a \in A \land b \in B\right\}\mathclose{}}$, the set of ordered pairs.

## Induction

$\sum_{i=1}^{n} a_i = a_1 + a_2 + \cdots + a_n$.

*Induction*: if $P(b)$ is true, and $P(k) \Rightarrow P(k + 1)$ for every integer $k \ge b$, then $P(n)$ is true for every integer $n \ge b$. $P(b)$ is the *base case*, and in the *inductive step* the assumption $P(k)$ is the *inductive hypothesis*.

Back to top
