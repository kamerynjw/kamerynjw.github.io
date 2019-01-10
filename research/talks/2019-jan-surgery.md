---
layout: page
title: "Amalgamating generic reals, a surgical approach"
permalink: /research/talks/2019-jan-surgery/
excerpt: "This is a talk in the UH Mānoa Mathematical Logic seminar on Thursday, January 24 at 2:00pm. The material in this talk is an adaptation of joint work with Miha Habič, Joel David Hamkins, Lukas Daniel Klausner, and Jonathan Verner, transforming set theoretic results into a computability theoretic context."
---

This is a talk in the UH Mānoa Mathematical Logic seminar on Thursday, January 24 at 2:00pm. The material in this talk is an adaptation of [joint work]({{ site.baseurl }}/research/pubs/set-theoretic-blockchains/) with Miha Habič, Joel David Hamkins, Lukas Daniel Klausner, and Jonathan Verner, transforming set theoretic results into a computability theoretic context.

Let $\mathcal D$ be the collection of dense subsets of the full binary tree coming from a fixed countable Turing ideal. In this talk we are interested in properties of $\mathcal D$-generic reals, those reals $x$ so that every $D \in \mathcal D$ is met by an initial segment of $x$. To be more specific the main question is the following. Fix a real $z$ which cannot be computed by any $\mathcal D$-generic. Can we craft a family of $\mathcal D$-generic reals so that we have precise control over which subfamilies of generic reals together compute $z$? 

I will illustrate a specific of this phenomenon as a warm up. I will show that given any $\mathcal D$-generic $x$ there is another $\mathcal D$-generic $y$ so that $x \oplus y$ can compute $z$. That is, neither $x$ nor $y$ can compute $z$ on their own, but together they can. 

The main result for the talk then gives a uniform affirmative answer for finite families. Namely, I will show that for any finite set $I = \{0, \ldots, n-1\}$ there are mutual $\mathcal D$-generic reals $x_0, \ldots, x_{n-1}$ which can be surgically modified to witness any desired pattern for computing $z$. More formally, there is a real $y$ so that given any $\mathcal A \subseteq \mathcal P(I)$ which is closed under superset and contains no singletons, that there is a single real $w_\mathcal{A}$ so that the family of grafts $\{ x_k \wr_y w_\mathcal{A} : k \in A \}$ for $A \subseteq I$ can compute $z$ if and only if $A \in \mathcal A$. Here, $x \wr_y w$ is a surgical modification of $x$, using $y$ to guide where to replace bits from $x$ with those from $w$.