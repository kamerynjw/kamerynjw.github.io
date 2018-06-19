---
layout: page
title: Minimal models of second-order set theories
permalink: /research/talks/2016-mar-std/
---

This is a talk at [Set Theory Day](http://nylogic.org/set-theory-day), a one-day conference held at the CUNY Graduate Center in honor of [Joel David Hamkins](http://jdh.hamkins.org/)'s 50th birthday, on 11 March 2016.

----

I will be speaking about some recent work of mine on models of Kelley-Morse set theory. The jumping-off point for my work is the following well-known theorem, independently due to Shepherdson and Cohen.

> **Theorem** There is a least transitive model of ZFC. That is, there is a transitive model of ZFC which is a subset of any transitive model of ZFC.

This least transitive model is namely the least $L_\alpha$ which is a model of set theory.

It’s not terribly difficult to see that this theorem can be generalized to more than ZFC. In particular, exactly the same proof carries through for any extension of ZFC which is absolute to $L$.

> **Corollary** Suppose that $T$ is an extension of ZFC with a transitive model so that if $M$ is a model of ZFC then so is $L^M$. Then there is a least transitive model of $T$.

*Proof:* This model is the least $L_\alpha$ for which there is a model of $T$ of height $\alpha$. ∎

Thus, we get least transitive models of ZFC + there is an inaccessible cardinal, ZFC + there is a Mahlo cardinal, and so on.

However, this result cannot be generalized to all extensions of ZFC. In particular, it fails for theories which assert the existence of large cardinals with a sufficiently strong embedding characterization.

> **Proposition** There is no least transitive model of ZFC + there is a measurable cardinal.

*Proof:* Suppose otherwise that $N$ were least. Consider the elementary embedding $j : N \to M$ associated with a measurable cardinal in $N$. By elementarity, $M$ is a model of ZFC + there is a measurable. However, $M$ is strictly contained in $N$. ∎

The question I was interested in was whether the result could be generalized to second-order set theories. Say that a second-order model $(M,\mathcal X)$ is transitive if $\mathcal X$ is transitive. Since we will always be able to assume without loss that $\mathcal X \subseteq \mathcal P(M)$, this is equivalent to $M$ being transitive. Now say that $(M,\mathcal X)$ is the least transitive model of a second-order set theory $T$ if $\mathcal X$ is contained in the second-order part of any model of $T$.

Shepherdson already answered the question for Gödel-Bernays set theory. Recall that GBC is the second-order set theory consisting of ZFC for the first-order part along with Extensionality for classes, Class Replacement asserting that images of sets under class functions are sets, Global Choice asserting the existence of a global well-order, and the Comprehension schema which asserts the existence of classes definable via first-order formulae, possibly with class parameters. (Shepherdson didn’t include Global Choice in his axiomatization, but noting that he proved the question for GBC is just noting that $L$ has a definable global well-order.)

> **Theorem** There is a least transitive model of GBC.

This model is $(L\_\alpha, L\_{\alpha+1})$, where $L_\alpha$ is the least transitive model of ZFC.

The main result I will present in my talk is that the analogous question has a negative answer for Kelley-Morse set theory. KM is like GBC but the Comprehension schema is strengthened to allow formulae with class quantifiers. This gives us a much stronger theory. For instance, KM proves Con(ZFC) whereas GBC is conservative over ZFC.

> **Theorem** There is no least transitive model of KM.

A second notion of minimality I consider is being the least second-order model with a fixed first-order part. Due to time constraints, however, I will say little about the following results during my talk.

Say that a model $M$ of ZFC is $T$-realizable if it is the first-order part of a model of $T$. These second-order parts are called $T$-realizations of M. Then, $\mathcal X \subseteq \mathcal P(M)$ is the least $T$-realization of $M$ if it is contained in every $T$-realization of $M$.

There is a precise characterization of when a countable model of ZFC has a least GBC-realization.

> **Theorem** A countable model of ZFC has a least GBC-realization if and only if it has a definable (possibly with parameters) global well-order.

This gives us a first-order characterization of the countable models of ZFC with a least GBC-realization as having a definable global well-order is equivalent to being a model of $\exists x\ V = \mathrm{HOD}(x)$ where $\mathrm{HOD}(x)$ is the class of sets which are hereditarily definable from ordinals and x.

For KM, we get that there are never least KM-realizations for countable models of ZFC.

> **Theorem** No countable model of ZFC has a least KM-realization.

![Set Theory Day 2016]({{ page.url }}set-theory-day-2016.jpg)

(The poster for the conference was made by Erin Carmody, Joel’s most recently graduated student. At the time of the conference, she had a position at Nebraska Wesleyan.)
