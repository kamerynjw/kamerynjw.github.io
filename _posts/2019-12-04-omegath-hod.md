---
layout: post
title: "The omega-th hod may not satisfy choice"
date: 2019-12-04
---

McAloon proved in the 70s that $\mathrm{HOD}^\omega$—i.e. the intersection of $\mathrm{HOD}$, the $\mathrm{HOD}$ of $\mathrm{HOD}$, and so on iterated out finitely far—may fail to satisfy choice. I decided to write up an exposition of his result because (1) it seems to be underappreciated and (2) I wanted to understand it and writing up an exposition of it was a good way to make that happen.
<!--more-->
(Added after writing: In this regard this was successful! There were some details I convinced myself I understood on the first read-through but had to revisit to really understand to write this post.)

My main reference here is section 6 of Zadrożny's 1983 paper "Iterated ordinal definability". References for the below-cited results can be found therein.

Let me start with the background context. It is well-known that there is a class forcing which forces the ground model to be the $\mathrm{HOD}$ of the extension. Thus, the only axioms which ZFC proves must be satisfied by $\mathrm{HOD}$ are ZFC itself. In particular, $\mathrm{HOD}$ may fail to satisfy $V = \mathrm{HOD}$ and it is possible that $\mathrm{HOD}^\mathrm{HOD} \ne \mathrm{HOD}$. 

As such it is sensible to iterated $\mathrm{HOD}$. Let $\mathrm{HOD}^0 = V$, $\mathrm{HOD}^{\alpha+1} = \mathrm{HOD}^{\mathrm{HOD}^\alpha}$ and $\mathrm{HOD}^\gamma = \bigcap_{\alpha < \gamma} \mathrm{HOD}^\alpha$ for limit ordinals $\gamma$. As this definition takes place in the metatheory, it is natural to inquire as to whether $\mathrm{HOD}^\alpha$ is definable. Of course, the sticking point is that you need uniform access to the sequence of iterated $\mathrm{HOD}$s below a limit ordinal, because the successor stage preserves definability. 

> **Theorem** (Grigorieff): If the universe is constructible from a set then $\mathrm{HOD}^\alpha$ is uniformly definable for all $\alpha$. 

In general, however, even the $\omega$-th $\mathrm{HOD}$ may fail to be definable. This is a consequence of the following proposition and theorem.

> **Proposition**: If the sequence $\langle \mathrm{HOD}^\alpha : \alpha < \lambda \rangle$ is definable, then for each $\alpha < \lambda$ we have $\mathrm{HOD}^\alpha$ satisfies ZF.

*Proof*: We have to see that the iterated $\mathrm{HOD}$s are transitive, closed under the Gödel operations, and almost universal. The first two of these are obvious, so let us check the third. The only substantive case is if $\gamma < \lambda$ is limit. Suppose that $X$ is a sub*set* of $\mathrm{HOD}^\gamma$. We want to find a set $Y \in \mathrm{HOD}^\gamma$ which covers $X$. Let $\beta$ be large enough so that $X \subseteq V_\beta$. Then $Y = V_\beta \cap \mathrm{HOD}^\gamma = V_\beta \cap \bigcap_{\alpha < \gamma} \mathrm{HOD}^\alpha$ is in $V_{\beta+1} \cap \mathrm{HOD}^\gamma$ and covers $X$, as desired. **QED**

> **Theorem** (Harrington): There is a (transitive) model of ZFC whose $\omega$-th $\mathrm{HOD}$ does not satisfy ZF. 

Putting these together, in Harrington's model the $\omega$-th $\mathrm{HOD}$ is not definable.

----

The background now made clear, let me move to the result I want to talk about.

> **Theorem** (McAloon): There is a set-forcing extension of $L$ whose $\omega$-th $\mathrm{HOD}$ lacks a well-ordering of its reals. 

Note that since McAloon's model is constructible from a set that the sequence of iterated $\mathrm{HOD}$s over his model is definable and thus $\mathrm{HOD}^\omega$ satisfies ZF. 

*Proof* (Following Zadrożny): Let $\mathbb P$ be the poset to add $\omega_1$ many Cohen reals, as defined in $L$. Since I will be needing the implementation details, let me be clear just what I mean by this. Conditions in $\mathbb P$ are finite partial functions from $\omega \times \omega_1$ to $2$, ordered by reverse inclusion. Let $G \subseteq \mathbb P$ be generic over $L$ and set $A_k = \{ (\ell,\alpha) \in G: \ell \ge k \}$ to be the chunk of $G$ from the $k$-th column on.

We next force over $L[G]$ to code the $A_k$ in some ordinal definable way. There are multiple ways to do this. Since we are starting over $L$, I will code by the (non)existence of Cohen-generic subsets of a cardinal. Namely, if $X$ is a set of ordinals then we can code $X$ starting at a cardinal $\kappa$ by the product of $\mathrm{Add}(\kappa^{+i},1)$ for $i \in X$. In $L[G]$, the only cardinal with subsets which are Cohen-generic over $L$ is $\omega$ itself. So in the further extension by the coding forcing, so long as we choose $\kappa$ to be uncountable, $X$ is definable using $\kappa$ as a parameter. And this coding forcing preserves cardinals and preserves the $\mathrm{GCH}$. 

Let me be a bit more precise. Fix a set of ordinals $X$ and a cardinal $\kappa$. Let $\mathbb C(X,\kappa)$ be the full-support product of $\mathrm{Add}(\kappa^{+i},1)$ for $i \in X$. Then $\mathbb C(X,\kappa)$ is $\mathord<\kappa$-closed and doesn't add any Cohen-generic subsets to cardinals $>\kappa^{+\sup X}$. In particular, if we put enough space between coding points, then we can code multiple sets without one coding interfering with the other.

We can iterate this procedure. Start with $X = X^{(0)}$ and $\kappa = \kappa_0$ and let $X^{(1)} \subseteq \mathbb C(X^{(0)},\kappa_0)$ be generic over the ground model $M$. We can think of $X^{(1)}$ as a set of ordinals; literally it is a function from a set of ordinals to sets of ordinals, but since the sets in the range are disjoint we can just think of $X^{(1)}$ as being the union of the range. We can then take $\kappa_1$ large enough and force over $M[X^{(1)}]$ with $\mathbb C(X^{(1)},\kappa_1)$. And we can do this out to $\omega$, coding the $k$-th generic $X^{(k)}$ above $\kappa_k$, amounting to a full-support $\omega$-length iteration. I will be using this later, so let's call this $\omega$-length iteration $\mathbb S(X, \kappa)$. (Earlier, $\mathbb C$ was for "**c**oding", here $\mathbb S$ is for "**s**elf-encoding", as the generic codes itself into the pattern of which cardinals have Cohen-generic subsets.)

As we can space out $\mathbb C(X,\kappa)$ codings to not interfere with each other, it is clear that we can space out $\mathbb S(X,\kappa)$ codings to not interfere with each other. We know in advance how much space we need to code $X^{(0)} = X$, from which we can then calculate how much space we need to code $X^{(1)}$, and then how much to code $X^{(2)}$, and so on. So given a bunch of sets of ordinals $X_i$, $i \in I$, to code, we can pick $\kappa_i$ so that the $\mathbb S(X_i,\kappa_i)$ codings don't interfere with each other. That is, if we force with the full-support product of the $\mathbb S(X_i, \kappa_i)$ then all of the $X_i^{(k)}$ are ordinal definable by looking at a contiguous block of cardinals and querying which of them have subsets which are Cohen-generic over $L$. (Observe that we are using full-support to ensure we don't add any Cohen reals.)

Let me summarize the situation and explain how we will apply these coding forcings. We forced over $L$ to get $L[G]$ where we added $\omega_1$ many Cohen reals. We then take the chunks $A_k$ of $G$, $k < \omega$, and we force with $\prod_{k < \omega} \mathbb S(A_k, \kappa_k)$ to code them in an ordinal-definable way. We will require that $\kappa_0 > \omega_1$ to make a later closure argument work. (The $A_k$ are not sets of ordinals, but we can consider them as such via our favorite pairing function.) Let $H$ be generic over $L[G]$ for this forcing. So in $L[G][H]$ not only are each $A_k$ ordinal definable, but so are the sets witnessing their ordinal definability, the sets witnessing the ordinal definability of those sets, and so on. In fact, we don't even need ordinal parameters to define them; since we are only coding countably many sets we can code them at sufficiently spaced-out definable without parameters coding points to get that they are themselves definable without parameters. 

We don't actually want to go all the way to $L[G][H]$. It has too much information and so its $\mathrm{HOD}$ is too big, being all of $L[G][H]$. We have to thin it out. Inside $L[G][H]$, let $B = \bigcup_{k < \omega} A_k^{(k)}$ and for $\ell \in \omega$ let $B_\ell = \bigcup_{k < \omega} A_{\ell + k}^{(k)} = \bigcup_{\ell \le k < \omega} A_k^{(k-\ell)}$. In particular, $B = B_0$. Our desired model is $L[B]$.

*Claim:* In $L[B]$, we have $\mathrm{HOD}^\ell = L[B_\ell]$ for $\ell < \omega$.

This is seen by induction. Work inside $(\mathrm{HOD}^{\ell})^{L[B]} = L[B_\ell]$. Observe that $B_{\ell+1}$ is ordinal definable, because an ordinal $i$ is in $B_{\ell+1}$ if and only if $i$ is in one of the coding blocks, say the $k$-th one, and there is a subset of $(\kappa_k)\_k$ which is Cohen-generic over $L$. Thus, $L[B_{\ell+1}] \subseteq \mathrm{HOD}^{L[B_\ell]}$. For the other inclusion, note that $L[B_\ell]$ is generic over $L[B_{\ell+1}]$ for a forcing that adds Cohen-generic subsets to certain cardinals. So by a standard homogeneity argument we get that $\mathrm{HOD}^{L[B_\ell]} \subseteq L[B_{\ell+1}]$.

Thus, we get that in $L[B]$ that the $\ell$-th iterated $\mathrm{HOD}$s are all different, for $k < \omega$. Since $L[B]$ is constructible from a set $(\mathrm{HOD}^\omega)^{L[B]} = \bigcap_{\ell < \omega} L[B_\ell]$ is a definable class over $L[B]$ and by the above proposition must satisfy ZF. It remains only to see that this model, call it $N$ so as to not have to write out $(\mathrm{HOD}^\omega)^{L[B]}$ ever again, does not have a well-order of its reals. 

Each of the models $L[B_\ell]$ satisfies the $\mathrm{GCH}$ and agrees with $L$ about which ordinals are cardinals. So if $N$ did have a well-order of its reals then it would have a well-order of ordertype ${\omega_1}^L$. Thus there would be $X \subseteq {\omega_1}^L$ in $N$ so that every real in $N$ is in $L[X]$. As such, to show that $N$ does not have a well-order of its reals it suffices to prove there is no such $X$. Toward this, fix $X \subseteq \omega_1$ in $N$.

Observe that $L[G][B] = L[B]$ because $A_0 = G \in L[B]$. But the forcing to add $B$ over $L[G]$ doesn't add new subsets of $\omega_1$, because we did all the coding above $\omega_1$. So it must be that $X \in L[G]$. Because $G$ is generic for the forcing to add $\omega_1$ many Cohen reals, a standard ccc argument gives that there is some countable ordinal $\alpha$ so that $X \in L[G \cap (\omega \times \alpha)]$. That is, we only needed a countable piece of $G$ to add $X$. Now let $c$ be the $\alpha$-th row of $G$, i.e. $c = \{ n \in \omega : (n,\alpha) \in G \}$. Then $c$ is a Cohen real over $L[G \cap (\omega \times \alpha)]$ and so in particular $c \not \in L[X]$. Notice, however, that $c \in L[B_\ell]$ for each $\ell$, because a tail of $c$ is the $\alpha$-th row of $A_\ell \in L[B_\ell]$. So $c \in N$, witnessing that there is a real in $N$ which is not constructible from $X$. This completes the argument that $N$ does not have a well-order of its reals. **QED**


