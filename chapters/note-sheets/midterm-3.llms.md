# Midterm 3 note sheet

Code

Relations and functions, graphs, finite automata and trees

Published

Last modified: 2026-11-19 12:07:39 (PST)

This sheet comes printed with Midterm 3. You may not bring your own notes, so study with this sheet. It leaves out some results; the full definitions are in the [notes](https://morrison-lab.github.io/mcs/). [Download the PDF](midterm-3.pdf) to print it.

## Relations and functions

|  |  |
|----|----|
| [Relation](https://morrison-lab.github.io/mcs/chapters/relations.html#def-relation) on $A$ | $R \subseteq A \times A$, and $(a \mathrel{R} b) \Leftrightarrow ((a, b) \in R)$ |
| [Reflexive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-reflexive) | $\forall a \in A, a \mathrel{R} a$ |
| [Symmetric](https://morrison-lab.github.io/mcs/chapters/relations.html#def-symmetric-relation) | $\forall a, b \in A, ((a \mathrel{R} b) \Rightarrow (b \mathrel{R} a))$ |
| [Transitive](https://morrison-lab.github.io/mcs/chapters/relations.html#def-transitive) | $\forall a, b, c \in A, (((a \mathrel{R} b) \land (b \mathrel{R} c)) \Rightarrow (a \mathrel{R} c))$ |
| [Antisymmetric](https://morrison-lab.github.io/mcs/chapters/relations.html#def-antisymmetric) | $\forall a, b \in A, (((a \mathrel{R} b) \land (b \mathrel{R} a)) \Rightarrow (a = b))$ |
| [Equivalence relation](https://morrison-lab.github.io/mcs/chapters/relations.html#def-equivalence-relation) | reflexive, symmetric and transitive |
| [Equivalence class](https://morrison-lab.github.io/mcs/chapters/relations.html#def-equivalence-class) | $[a] = {\mathopen{}\left\{b \in A : b \mathrel{R} a\right\}\mathclose{}}$ |
| [Injective](https://morrison-lab.github.io/mcs/chapters/relations.html#def-injective) $f : A \to B$ | $\forall a_1, a_2 \in A, ((f(a_1) = f(a_2)) \Rightarrow (a_1 = a_2))$ |
| [Surjective](https://morrison-lab.github.io/mcs/chapters/relations.html#def-surjective) | $\forall b \in B, \exists a \in A, f(a) = b$ |
| [Bijective](https://morrison-lab.github.io/mcs/chapters/relations.html#def-bijective) | injective and surjective |
| [Inverse](https://morrison-lab.github.io/mcs/chapters/relations.html#def-inverse-function) of a bijection | $f^{-1} : B \to A$ with $(f^{-1}(b) = a) \Leftrightarrow (f(a) = b)$ |
| [Floor](https://morrison-lab.github.io/mcs/chapters/loop-invariants.html#def-floor) | $\mathopen{}\left\lfloor x\right\rfloor\mathclose{} = \max {\mathopen{}\left\{n \in \mathbb{Z}: n \le x\right\}\mathclose{}}$ |

Table 1: Relations and functions.

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

Table 2: Graphs.

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

Table 3: Finite automata.

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

Table 4: Trees.

Back to top
