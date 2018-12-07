---
layout: page
title: "The Universal Sigma_1 Finite Sequence"
permalink: /research/talks/2018-dec-cmr/
---

This is a contributed talk at the [Cantor Meets Robinson](https://cantormeetsrobinson.wordpress.com/) conference, Dec 12–15, 2018.

[Slides.]({{ page.url }}univ-seq.pdf)

Consider a computable theory $\mathsf{ZF}^+$ extending $\mathsf{ZF}$. There is a $\Sigma_1$ definition, without parameters, for a finite sequence of sets $b_0, b_1, \ldots , b_n$ with the following properties.

1. $\mathsf{ZF}^+$ proves the sequence is finite.

2. In any transitive model of $\mathsf{ZF}^+$ the sequence is empty.

3. If $M$ is a countable model of $\mathsf{ZF}^+$ in which the sequence is $s$ and $t \in M$ is a finite sequence extending $s$, then there is $N \models \mathsf{ZF}^+$ end-extending $M$—that is, $N$ extends $M$ and if $x \in M$, $y \in N$, and $N \models y \in x$ then $y \in M$—so that in $N$ the sequence is $t$.

4.  Indeed, for statement (3), it suffices merely that $M \models \mathsf{ZF}$ and there is an inner model $W \subseteq M$ with $W \models \mathsf{ZF}^+$.

This $\Sigma_1$ universal finite sequence can be compared to the $\Sigma_2$ universal finite set of [HW17]. For Hamkins and Woodin, their finite set is universal with respect to rank-extensions, with $\Sigma_2$ statements being those witnessed by a rank-initial segment of the universe. The universal sequence presented here is universal with respect to end-extensions and is thus $\Sigma_1$, as $\Sigma_1$ statements are those witnessed by an $\in$-initial segment of the universe, i.e. by a transitive set. Both universal sequences are set theoretic analogues of Woodin’s universal algorithm for models of arithmetic [Woo11].
As a consequence of the $\Sigma_1$ universal finite sequence we can calculate the
modal validities of end-extensional set theoretic potentialism. Recall that a
potentialist system is a Kripke model of first-order structures in a common
extension, where the accessibility relation refines the substructure relation.
A potentialist system thereby has a natural associated modal interpretation,
namely where $\diamond \varphi$ holds in a world $M$ if $\varphi$ holds in some extension of $M$ and $\square \varphi$ holds in $M$ if $\varphi$ holds in every extension of $M$. In the terminology of [Ham18], the $\Sigma_1$ universal finite sequence implies that the potentialist system consisting of countable models of $\mathsf{ZF}^+$ ordered by end-extension admits railyard labelings for every finite pretree. Therefore, the modal validities of this potentialist system are precisely $\mathsf{S4}$.

This is joint work with Joel David Hamkins and Philip Welch. Our paper is in the process of being written.

----

[Ham18] Joel David Hamkins. "The modal logic of arithmetic potentialism and the universal algorithm". *under review*. [arXiv:1801.04599](https://arxiv.org/abs/1801.04599).

[HW17] Joel David Hamkins and W. Hugh Woodin. "The universal finite set". *under review*. [arXiv:1711.07952](https://arxiv.org/abs/1711.07952).

[Woo11] W. Hugh Woodin. "A potential subtlety concerning the distinction between determinism and nondeterminism". In: *Infinity*. Cambridge University Press, Cambridge, 2011, pp. 119–129.
