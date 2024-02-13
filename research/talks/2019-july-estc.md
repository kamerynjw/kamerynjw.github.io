---
layout: page
title: "The Sigma_1 universal finite sequence"
permalink: /research/talks/2019-july-estc/
excerption: "This is a contributed talk at the seventh biannual European Set Theory Confence on Thursday, 4 July 2019. It is about joint work with Joel David Hamkins and Philip Welch. Consider a computably enumerable theory ZF^+ extending ZF..."
---

This is a contributed talk at the [seventh biannual European Set Theory Confence](https://sites.google.com/view/estc2019/estc-2019) on Thursday, 4 July 2019. It is about joint work with Joel David Hamkins and Philip Welch. 

[[slides]({{ page.url }}univ-seq.pdf)]

Consider a computably enumerable theory $\mathsf{ZF}^+$ extending $\mathsf{ZF}$. There is a $\Sigma_1$ definition, without parameters, for a finite sequence of sets $b_0, b_1, \ldots, b_n$ with the following properties.

* $\mathsf{ZF}^+$ proves the sequence is finite.

* In any transitive model of $\mathsf{ZF}^+$ the sequence is empty.

* If $M$ is a countable model of $\mathsf{ZF}^+$ in which the sequence is $s$ and $t \in M$ is a finite sequence extending $s$, then there is $N \models \mathsf{ZF}^+$ end-extending  $M$---that is, $N$ extends $M$ and if $x \in M$, $y \in N$, and $N \models y \in x$ then $y \in M$---so that in $N$ the sequence is $t$.

* Indeed, it suffices merely that $M \models \mathsf{ZF}$ and there is an inner model $W \subseteq M$ with $W \models \mathsf{ZF}^+$.

This $\Sigma_1$ universal finite sequence can be compared to the $\Sigma_2$ universal finite set of Hamkins and Woodin. Their finite set is universal with respect to rank-extensions, with $\Sigma_2$ statements being those witnessed by a rank-initial segment of the universe. The universal sequence presented here is universal with respect to end-extensions and is thus $\Sigma_1$, as $\Sigma_1$ statements are those witnessed by an $\in$-initial segment of the universe, i.e. by a transitive set. Both universal sequences are set theoretic analogues of Woodin's universal algorithm for models of arithmetic.

As a consequence of the $\Sigma_1$ universal finite sequence we can calculate the modal validities of end-extensional set theoretic potentialism. Recall that a potentialist system is a Kripke model of first-order structures in a common extension, where the accessibility relation refines the substructure relation. A potentialist system thereby has a natural associated modal interpretation, namely where $\possible\varphi$ holds in a world $M$ if $\varphi$ holds in some extension of $M$ and $\necessary\varphi$ holds in $M$ if $\varphi$ holds in every extension of $M$. Consider the potentialist system consisting of countable models of $\mathsf{ZF}^+$ ordered by end-extension. Its modal validities are precisely $\mathsf{S4}$.
