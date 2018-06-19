---
layout: page
title: Least models of second-order set theories
permalink: /research/pubs/least-models/
---

[[PDF]({{ page.url }}kwilliams-least-models.pdf)] [[arXiv](https://arxiv.org/abs/1709.03955)] [bibTeX]

> **Abstract** The main theorems of this paper are (1) there is no least transitive model of Kelley–Morse set theory $\mathsf{KM}$ and (2) there is a least $\beta$-model—that is, a transitive model which is correct about which of its classes are well-founded—of Gödel–Bernays set theory $\mathsf{GBC}$ + Elementary Transfinite Recursion. Along the way I characterize when a countable model of $\mathsf{ZFC}$ has a least $\mathsf{GBC}$-realization and show that no countable model of $\mathsf{ZFC}$ has a least $\mathsf{KM}$-realization. I also show that fragments of Elementary Transfinite Recursion have least $\beta$-models and, for sufficiently weak fragments, least transitive models. These fragments can be separated from each other and from the full principle of Elementary Transfinite Recursion by consistency strength. The main question left unanswered by this article is whether there is a least transitive model of $\mathsf{GBC}$ + Elementary Transfinite Recursion.

Every set theorist knows there is a least transitive model of $\mathsf{ZFC}$. What if we want to ask the same question about second-order set theories? Which second-order set theories, if any, have least transitive models? The answer for $\mathsf{GBC}$ follows immediately from the existence of a least transitive model of $\mathsf{ZFC}$: the least transitive model of $\mathsf{GBC}$ is $(L\_\alpha, \mathrm{Def}(L\_\alpha))$ where $L_\alpha$ is the least transitive model of $\mathsf{ZFC}$. (Indeed, Shepherdson formulated his original argument in terms of $\mathsf{GB}$ (i.e. without Global Choice), rather than in terms of $\mathsf{ZFC}$.) But this easy argument won't work for second-order set theories that assert the existence of more classes.

Indeed, no argument will work for sufficiently strong second-order set theories. Take $\mathsf{KM}$. Allowing for the existence of impredicatively-defined classes means that models of $\mathsf{KM}$ have enough "meta-ordinals" that tools from admissible set theory can be applied. Starting from a model of $\mathsf{KM}$ we can build another model of $\mathsf{KM}$ whose first-order part is the same but whose second-order part sits off to the side, so to speak.

So no (countable) model of $\mathsf{ZFC}$ has a least $\mathsf{KM}$-realization and thus there cannot be a smallest transitive model of $\mathsf{KM}$. (Of course, see the actual paper for more than a brief sketch of the argument.)

But $\mathsf{KM}$ is much stronger than $\mathsf{GBC}$ and there are natural theories in the middle. What about those? For $\Pi^1_k\text{-}\mathsf{CA}$ more or less the same argument as the $\mathsf{KM}$ case goes through, getting that they don't have least transitive models. (But I don't give a proof of such in this paper; see my forthcoming dissertation for full details.)

So let's go lower, to the theory $\mathsf{ETR}$, which is $\mathsf{GBC}$ augmented with the principle of Elementary Transfinite Recursion. Then $\mathsf{ETR}$ is stronger than $\mathsf{GBC}$ because, say, we can construct the Tarskian satisfaction class for first-order formulae via a class recursion of height $\omega$. But $\mathsf{ETR}$ is strictly weaker than $\Pi^1_1\text{-}\mathsf{CA}$.

I don't actually know whether there is a least transitive model of $\mathsf{ETR}$. (This is the main open question from my paper.) However, I do show that there is a least $\beta$-model of $\mathsf{ETR}$. As well, sufficiently weak fragments of $\mathsf{ETR}$---such as $\mathsf{ETR}_{\mathrm{Ord}}$ which only asserts that elementary transfinite recursions of height $\le \mathrm{Ord}$ have solutions---do have least transitive models. Combined with the results from my [joint paper]({{ site.baseurl }}/research/pubs/class-forcing-theorem) with Gitman, Hamkins, Holy, and Schlict this gives that there is a smallest transitive model of $\mathsf{GBC}$ which satisfies the forcing theorem for all class forcings. I think that's neat.
