---
layout: post
title: "Recursive saturation, inner models, and forcing"
date: 2019-08-07 ## need to change this when done to be accurate
---

(The content of this blog post arose from discussion with [Victoria Gitman](https://victoriagitman.github.io/), in the context of work in a joint project with [Michał Godziszewski](https://philpeople.org/profiles/michal-tomasz-godziszewski) and [Toby Meadows](https://sites.google.com/site/tobymeadows/).)

In the study of nonstandard models of set theory, one important property is that of recursive saturation. Originally due to Barwise and Schlipf, recursive saturation has proven to be a robust and powerful notion. Let me begin by reminding you of the definition. 
<!--more-->
A model $M$ of set theory is *recursively saturated* if it realizes each finitely consistent computable type. That is, if $p(x) = \\\{ \varphi_n(x,a) : n \in \omega \\\}$ is a type so that $a$ is a parameter from $M$ and $\\\{ \varphi_n : n \in \omega \\\}$ is a computable subset of $\omega$, and if for each $m \in \omega$ there is $x \in M$ so that $M \models \varphi_n(x,a)$ for each $n < m$, then there is $x \in M$ so that $M \models \varphi_n(x,a)$ for each $n$. Unlike stronger forms of saturation which force the model to be uncountable, every consistent completion of, say, ZF has a countable, recursively saturated model. 

An easy observation, and a good exercise if one has not seen recursively saturated models before, is that every recursively saturated model is $\omega$-nonstandard. But there are $\omega$-nonstandard models which are not recursively saturated. If $M$ is recursively saturated then the definable ordinals of $M$ must be bounded. But every completion of ZF has an $\omega$-nonstandard *Paris model*, a model whose ordinals are all definable. (This result is originall due to Paris, hence the name. Ali Enayat has [an excellent paper](https://link.springer.com/article/10.1007/s00153-004-0256-9) about Paris models.)

In this blog post, the question I want to investigate is, how do some standard set theoretic methods for constructing models of set theory interact with recursive saturation. In particular, I want to focus on inner models and forcing extensions. But first, let's see why looking at set-sized submodels isn't so interesting in this context.

> **Proposition.** Suppose $M$ is $\omega$-nonstandard and $N \in M$ is a model of set theory. Then $N$ is recursively saturated.

*Proof:* The key fact used here is that $M$ has a truth predicate for $N$ which means the truth of nonstandard formulae in $M$. Let $p(x) = \\\{ \varphi_n(x) : n \in \omega \\\}$ be a computable type with a parameter from $N$ which is finitely consistent over $N$. We may assume without loss that $p(x)$ is increasing, meaning that if $n > m$ then $\varphi_n(x)$ implies $\varphi_m(x)$. By assumption, $\varphi_n(x)$ is realized for each standard $n$. So by overspill applied in $M$ there must be a nonstandard $e$ so that $M$ thinks $N$ has an element $x$ satisfying $\varphi_e(x)$. So also $N \models \varphi_n(x)$ for each standard $n$, as desired. QED

Perhaps it's a bit rude to say that this proposition implies set-sized submodels are uninteresting in the context of recursive saturation. Gitman and Hamkins make good use of this in their paper "[A natural model of the multiverse axioms](https://victoriagitman.github.io/publications/2010/03/31/a-natural-model-of-the-multiverse-axioms.html)". But this proposition does imply that the question of whether going to a set-sized submodel preserves recursive saturation/non-recursive saturation always has the same answer. 

Next let's look at inner models and see that recursive saturation is preserved by going to inner models.

> **Proposition.** Suppose $M$ is a definable inner model of $N$ and that $N$ is recursively saturated. Then $M$ is recursively saturated.

*Proof:* Consider a computable type $p(x) = \\\{ \varphi_n(x,a) : n \in \omega \\\}$ with a parameter $a$ from $M$. Suppose $p(x)$ is finitely realizable in $M$. Then the type $p'(x) = \\\{ \varphi_n^M(x,a) : n \in \omega \\\}$ is finitely realizable in $N$. So by recursive saturation $p'(x)$ is realized in $N$. But the element realizing $p'(x)$ must also realize $p(x)$ in $M$. QED

The contrapositive of this proposition is also of interest. It states that if $M$ is a definable inner model of $N$ and $M$ is not recursively saturated then $N$ is not recursively saturated. In particular, if $M[G]$ is a (set) forcing extension of $M$ and $M$ is not recursively saturated, then neither is $M[G]$. So this partially answers how recursively saturation interacts with forcing extensions.

But before we look more at forcing extensions, let's finish looking at inner models. The next question is whether non-recursive saturation is preserved by going to inner models. Phrased in the contrapositive, we want to know whether if $M \subseteq N$ is a definable inner model and $M$ is recursively saturated, must it be the case that $N$ is recursively saturated? 

The answer in general is no. This can be seen through work by [Hamkins, Linetsky, and Reitz](http://jdh.hamkins.org/pointwisedefinablemodelsofsettheory/). They showed that every countable model of set theory has an outer model which is *pointwise definable*, meaning that every element of the model is definable without parameters. Pointwise definable models are necessarily Paris, and thus cannot be recursively saturated. So start with a countable, recursively saturated model $M$ of $V = L$. Then the Hamkins, Linetsky, and Reitz result gives an outer model $N \supseteq M$ which is not recursively saturated. But $M = L^N$ is a definable inner model which is recursively saturated. 

Trivially, the answer cannot universally be no. Any model of set theory $M$ is a definable inner model of itself, and so if $M$ is non-recursively saturated this is preserved by going to the inner model $M$. If we want a nontrivial positive answer, what we want is $M$ a proper inner model of $N$ where $M$ and $N$ are both recursively saturated. A natural case to consider is where $N$ is a forcing extension of $M$, which segues us into looking at whether recursive saturation is preserved by forcing. First we need a lemma.

> **Lemma.** Suppose $M$ is countable and recursively saturated. Then there are cofinally many ordinals $\alpha \in M$ so that $M$ is isomorphic to ${V_\alpha}^M$. 

*Proof:* If $x \subseteq \omega$, say that $x$ is *coded* in $M$ if there is $X \in \mathcal P(\omega)^M$ so that $x$ is the standard part of $X$. The collection of reals coded in $M$ is called the *standard system* of $M$. Say that $M$ is *standard system-saturated* if every finitely consistent type coded in $M$ is realized in $M$. A standard fact is that recursive saturation is equivalent to standard system-saturation. The backward implication is immediate, since every computable set is coded in $M$. For the forward implication, let $p(x,a)$ be a finitely realizable type coded in $M$ by $P$, using a parameter $a \in M$. Define a new type $q(x,a,P)$ to consist of formulae of the form $\varphi(x,y) \in P \Rightarrow \varphi(x,a)$. Then $q(x,a,P)$ is finitely realizable, using the same witness as for $p(x,a)$, and is computable. By recursive saturation $q(x,a,P)$ is realized, and thus $p(x,a)$ is realized, as desired. 

Moreover, because $M$ is recursively saturated the type of any element of $M$ is coded in $M$. This is because, for $a \in M$, the type $p(x)$ consisting of formulae of the form $\varphi(y) \in x \Leftrightarrow \varphi(a)$ is computable and finitely realizable. Thus, the theory of $M$ is coded in $M$. Let $T \in M$ code the theory of $M$. By the Lévy–Montague reflection principle, for each standard $n$ the first $n$ axioms of $T$ are satisfied cofinally many $V_\alpha$. So by overspill there is some nonstandard $e$ so that the first $e$ axioms are satisfied by cofinally many $V_\alpha$. This covers all the standard axioms, so $V_\alpha$ satisfies the theory of $M$. Also observe that ${V_\alpha}^M$ and $M$ have the same standard system. Now a back-and-forth argument gives that $M$ and ${V_\alpha}^M$ are isomorphic. QED

> **Proposition.** Suppose $M$ is countable and recursively saturated. Let $M[G]$ be a forcing extension of $M$. Then $M[G]$ is recursively saturated.

*Proof:* Let me first give the argument for when $G$ is generic for set forcing $\mathbb{P}$. Take $\alpha$ large enough so that $\mathcal{P}(\mathbb{P}) \in {V_\alpha}^M$. Then every dense subset of $\mathbb P$ is in ${V_\alpha}^M$, so $G$ is generic over ${V_\alpha}^M$. It is now easy to see that the isomorphism from $M$ to ${V_\alpha}^M$ which exists by the lemma lifts to an isomorphism from $M[G]$ to ${V_\alpha}^M$. Now note ${V_\alpha}^M[G]$ is an element of $M[G]$, and thus must be recursively saturated by an earlier proposition. 

The class forcing case is very similar. The difference is that we cannot bound $\mathbb P$ by a $V_\alpha$. Instead, we look at the image $\mathbb P'$ of $\mathbb P$ and the image $G'$ of $G$ under the isomorphism $M \cong {V_\alpha}^M$ and get that ${V_\alpha}^M[G']$ is an element of $M[G]$. QED

This only answered the question for countable models. What about for uncountable models? Of course, in general uncountable models need not have forcing extensions. But in case we do have a forcing extension of an uncountable recursively saturated model, must it also be recursively saturated? 

This can be answered by one of my favorite argument templates in set theory, namely collapsing things to be countable and then applying absoluteness.

> **Corollary.** Suppose $M \subseteq M[G]$ is a forcing extension of a nonstandard model. Then $M[G]$ is also nonstandard.

*Proof:* It only remains to check the case where $M$ is uncountable. Observe that a model $N$ being recursively saturated is absolute among transitive models of ZF containing $N$; checking whether $N$ is recursively saturated only requires quantifying over natural numbers—Turing machines giving certain computable types—elements of $N$, and the truth predicate of $N$. All of those are absolute among transitive models of a sufficient fragment of ZF. So consider the forcing extension $V[c]$ of the universe which collapses $M[G]$ to be countable. We just saw that in $V[c]$ that $M[G]$ must be recursively saturated. By absoluteness the same is true in $V$. QED

This finishes the question for forcing extensions. Let me summarize the results. Recursive saturation goes down to definable inner models, but the same is not in general true for non-recursive saturation. And recursive saturation is preserved by forcing, both set and class forcing. Non-recursive saturation is preserved by set forcing, but I did not settle the question for class forcing. The issue is that the ground model definability theorem fails in general for class forcing. 

> **Question.** If $M$ is not recursively saturated and $M[G]$ is any class forcing extension of $M$, must it be that $M[G]$ is not recursively saturated?

To close things off, I want to return to the Hamkins, Linetsky, and Reitz construction. I shan't explain their paper in detail, but let me briefly sketch their construction. (They actually proved the result for models of GBC, and it is this context which I wish to mention.) Given a countable model $M$ of set theory they construct a pointwise definable outer model in two steps. First, they use a 'perfect generic' construction to get $X \subseteq \mathrm{Ord}^M$ so that $(M,X)$ satisfies the relatized version of ZFC allowing formulae in the axiom schemata to refer to $X$, and where every element of $M$ is definable using $X$ as a predicate. For the second step they then do a class forcing extension of $(M,X)$ based off an old result due to Simpson.

This perfect generic construction is an adaptation of a construction for models of arithmetic, due to Kossak and Schmerl. Their construction is in turn a way of adapting Sacks forcing to a forcing-like context over models of arithmetic. (Because this is my blog and I'm allowed to self-promote on my own blog, let mention that I have applied the perfect generic construction for a different purpose for models of set theory in [a paper]({{ site.baseurl }}/research/pubs/least-models/). Namely, I showed that countable models of GBC have minimal extensions to larger GBC which add new sets but no classes, where they are minimal in the sense that there is no intermediate extension to a model of GBC.)

One might wonder whether this perfect generic construction is necessary. Maybe it could be done just with class forcing. The results in this blog post show that this in general cannot be done. For if $M$ is recursively saturated and $N$ is a class forcing-extension of $M$, then $N$ is also recursively saturated. So $N$ could not be pointwise definable.
