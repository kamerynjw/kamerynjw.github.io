---
layout: page
title: The Exact Strength of the Class Forcing Theorem
permalink: /research/pubs/class-forcing-theorem/
excerption: "We shall characterize the exact strength of the class forcing theorem..."
---

Joint with Victoria Gitman, Joel David Hamkins, Peter Holy, and Philipp Schlicht.

[[PDF]({{ page.url }}class-forcing-theorem.pdf)] [[arXiv](https://arxiv.org/abs/1707.03700)] [bibTeX]

> **Abstract** The class forcing theorem, which asserts that every class forcing notion $\mathbb P$ admits a forcing relation $\Vdash\_{\mathbb P}$, that is, a relation satisfying the forcing relation recursion—it follows that statements true in the corresponding forcing extensions are forced and forced statements are true—is equivalent over Gödel–Bernays set theory $\mathsf{GBC}$ to the principle of elementary transfinite recursion $\mathsf{ETR}\_{\mathrm{Ord}}$ for class recursions of length $\mathrm{Ord}$. It is also equivalent to the existence of truth predicates for the infinitary languages $\mathcal{L}\_{\mathrm{Ord},\omega}(\in,A)$, allowing any class parameter $A$; to the existence of truth predicates for the language $\mathcal{L}\_{\mathrm{Ord},\mathrm{Ord}}(\in,A)$; to the existence of $\mathrm{Ord}$-iterated truth predicates for first-order set theory $\mathcal{L}\_{\omega,\omega}(\in,A)$; to the assertion that every separative class partial order $\mathbb P$ has a set-complete class Boolean completion; to a class-join separation principle; and to the principle of determinacy for clopen class games of rank at most $\mathrm{Ord}+1$. Unlike set forcing, if every class forcing notion $\mathbb P$ has a forcing relation merely for atomic formulas, then every such $\mathbb P$ has a uniform forcing relation applicable simultaneously to all formulas. Our results situate the class forcing theorem in the rich hierarchy of theories between $\mathsf{GBC}$ and Kelley-Morse set theory $\mathsf{KM}$.

We shall characterize the exact strength of the class forcing theorem, which asserts that every class forcing notion $\mathbb{P}$ has a corresponding forcing relation $\Vdash_\mathbb{P}$, a relation satisfying the forcing relation recursion. When there is such a forcing relation, then statements true in any corresponding forcing extension are forced and forced statements are true in those extensions.

Unlike set forcing, for which one may prove in $\mathsf{ZFC}$ that every set forcing notion has corresponding forcing relations, with class forcing it is consistent with Gödel-Bernays set theory $\mathsf{GBC}$ that there is a proper class forcing notion lacking a corresponding forcing relation, even merely for the atomic formulas. For certain forcing notions, the existence of an atomic forcing relation implies $\mathrm{Con}(\mathsf{ZFC})$ and much more, and so the consistency strength of the class forcing theorem strictly exceeds $\mathsf{GBC}$, if this theory is consistent. Nevertheless, the class forcing theorem is provable in stronger theories, such as Kelley-Morse set theory. What is the exact strength of the class forcing theorem?

Our project here is to identify the strength of the class forcing theorem by situating it in the rich hierarchy of theories between $\mathsf{GBC}$ and $\mathsf{KM}$. It turns out that the class forcing theorem is equivalent over $\mathsf{GBC}$ to an attractive collection of several other natural set-theoretic assertions; it is a robust axiomatic principle.

The main theorem is naturally part of the emerging subject we call the reverse mathematics of second-order set theory, a higher analogue of the perhaps more familiar reverse mathematics of second-order arithmetic. In this new research area, we are concerned with the hierarchy of second-order set theories between $\mathsf{GBC}$ and $\mathsf{KM}$ and beyond, analyzing the strength of various assertions in second-order set theory, such as the principle $\mathsf{ETR}$ of elementary transfinite recursion, the principle of $\Pi^1_1$-comprehension or the principle of determinacy for clopen class games. We fit these set-theoretic principles into the hierarchy of theories over the base theory $\mathsf{GBC}$. The main theorem of this article does exactly this with the class forcing theorem by finding its exact strength in relation to nearby theories in this hierarchy.

> **Main Theorem** The following are equivalent over Gödel-Bernays set theory.

> 1. The atomic class forcing theorem: every class forcing notion admits forcing relations for atomic formulae $p\Vdash\sigma=\tau$ and $p\Vdash\sigma\in\tau.$
> 2. The class forcing theorem schema: for each first-order formula $\varphi$ in the forcing language, with finitely many class names $\dot \Gamma\_i$, there is a forcing relation applicable to this formula and its subformulae $p\Vdash\varphi(\vec \tau,\dot\Gamma\_0,\ldots,\dot\Gamma\_m).$
> 3. The uniform first-order class forcing theorem: every class forcing notion $\mathbb{P}$ admits a uniform forcing relation $p\Vdash\varphi(\vec \tau,\dot\Gamma\_0,\ldots,\dot\Gamma\_m)$ applicable to all assertions $\varphi\in\mathcal{L}\_{\omega,\omega}(\in,V^\mathbb{P},\dot\Gamma\_0,\ldots,\dot\Gamma\_m)$ in the first-order forcing language with finitely many class names.
> 4. The uniform infinitary class forcing theorem: every class forcing notion $\mathbb{P}$ admits a uniform forcing relation $p\Vdash\varphi(\vec \tau,\dot\Gamma\_0,\ldots,\dot\Gamma\_m)$ applicable to all assertions $\varphi\in\mathcal{L}\_{\mathrm{Ord},\mathrm{Ord}}(\in,V^\mathbb{P},\dot\Gamma\_0,\ldots,\dot\Gamma\_m)$ in the infinitary forcing language with finitely many class names.
> 5. Names for truth predicates: every class forcing notion $\mathbb{P}$ has a class name $\dot T$ and a forcing relation for which $\mathbf{1}\Vdash\dot T$ is a truth-predicate for the first-order forcing language with finitely many class names $\mathcal{L}\_{\omega,\omega}(\in,V^\mathbb{P},\dot\Gamma\_0,\ldots,\dot\Gamma\_m)$.
> 6. Boolean completions: Every class forcing notion $\mathbb{P}$, that is, every separative class partial order, admits a Boolean completion $\mathbb B$, a set-complete class Boolean algebra into which $\mathbb{P}$ densely embeds.
> 7. The class-join separation principle plus $\mathsf{ETR}\_{\mathrm{Ord}}$-foundation.
> 8. For every class $A$, there is a truth predicate for $\mathcal{L}\_{\mathrm{Ord},\omega}(\in,A)$.
> 9. For every class $A$, there is a truth predicate for $\mathcal{L}\_{\mathrm{Ord},\mathrm{Ord}}(\in,A)$.
> 10. For every class $A$, there is an $\mathrm{Ord}$-iterated truth predicate for $\mathcal{L}\_{\omega,\omega}(\in,A)$.
> 11. The principle of determinacy for clopen class games of rank at most $\mathrm{Ord}+1$.
> 12. The principle $\mathsf{ETR}\_{\mathrm{Ord}}$ of elementary transfinite recursion for $\mathrm{Ord}$-length recursions of first-order properties, using any class parameter.
