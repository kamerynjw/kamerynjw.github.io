---
layout: post
title: "Are bi-interpretable theories merely equivalent looks on the same thing? A possible counterexample"
date: 2022-05-18
---

(Updated Jan 9, 2025 for a correction pointed out by James E. Hanson.)

This post arose from thinking about some questions [Joel David Hamkins](https://jdh.hamkins.org) raised on [twitter](https://twitter.com/JDHamkins/status/1526752564896727043), in concert with some thoughts that'd been kicking around my head for a while.

Bi-interpretability is commonly taken to say that two theories have equivalent content and working in one over the other is a matter of personal preference with no mathematical difference. I think this may be too hasty a conclusion, and this blog post is an attempt to explicate a possible counterexample, which I claim no essential novelty in raising.<!--more-->

For the sake of the non-expert, let me recall the definitions and give a couple examples, albeit somewhat informally. (Experts can skip down to the horizontal rule.) A theory $T$ is said to *interpret* another theory $S$ if there's a translation of $S$-formulae into $T$-formulae restricted to some definable domain so that $T$ proves every translation of the axioms of $S$. In terms of models, this means that every model of $T$ can define a model of $S$. And $T$ and $S$ are *mutually interpretable* if they each interpret each other.

A stronger condition is bi-interpretability. Theories $T$ and $S$ are *bi-interpretable* if they are mutually interpretable in such a way that doing one interpretation then the other gives an isomorphism. Let me give an example: Peano arithmetic and finite set theory, i.e. ZFC but with the axiom of infinity replaced with its negation\* are bi-interpretable. In terms of their standard models: you can interpret the natural numbers in the hereditarily finite sets as, say, the von Neumann ordinals, and you can interpret hereditarily finite sets in the natural numbers via the [Ackermann encoding](https://en.wikipedia.org/wiki/BIT_predicate). (Doing the bi-interpretability on the level of theories amounts to the same interpretations, but done more carefully to check they work even in nonstandard models.)

(\* Technical point: you have to be careful how the foundation axiom is formulated for this to work out correctly. Cf. [this paper](https://web.mat.bham.ac.uk/R.W.Kaye/publ/papers/finitesettheory/) by Kaye and Lok Wong.)

And here's an example of mutual interpretability which doesn't give a bi-interpretation: ZFC can interpret ZF trivially. In the other direction, ZF can interpret ZFC by restricting to Gödel's constructible universe $L$. But this throws out sets, losing information. In a model $M$ of ZFC, it interprets ZF as itself $M$, and this model of ZF then interprets ZFC by cutting down to $L^M$. Unless $M$ thought that every set is constructible, this doesn't give an isomorphic copy of $M$.
Indeed, there is no way to interpret ZFC in ZF that gives a bi-interpretation, but that's a nontrivial result. (This follows from [very nice, more general work](https://arxiv.org/abs/1702.07093v1) by Enayat.)

----

Definitions out of the way, let me motivate my possible counterexample. One metamathematical question we use formal theories to answer is, "Does theorem *X* require axiom *Y* to prove?" A historically important case of this is when *Y* is the axiom of choice. An area where the answer is usually no is combinatorics on the integers. For instance, there's a slick proof of [Hindmann's theorem](http://math.columbia.edu/~martinez/Notes/hindmantheorem.pdf) which goes through idempotent ultrafilters. These require a fragment of the axiom of choice to construct. (Di Nasso and Tachtsis [have investigated](https://arxiv.org/abs/1701.03301) just how little of a fragment you need.) Can we prove Hindmann's theorem in just ZF?

Hindmann also gave an elementary proof of his theorem, so the answer here is yes. But that proof is much more intricate and involved. Ultrafilters and nonstandard methods have seen a lot of use in proving theorems in combinatorics on the integers, and we would like to draw that conclusion in general without the difficult and tedious process of producing a non-choice proof by hand.

Fortunately, a logician has provided a general result we can use here. Say that a mathematical statement is $\Pi^1\_2$ if it can be cast in the form "for every set $X$ of natural numbers there is a set $Y$ of natural numbers so that $X$ and $Y$ satisfy a property that can be expressed just by quantifying over natural numbers". It's straightforward to see that most Ramsey-like results over $\mathbb N$ are $\Pi^1\_2$—"for each partition blah blah there is a homogeneous set blah blah".

Shoenfield's absoluteness theorem states that if a $\Pi^1\_2$ statement is provable with the use of choice, it must be provable without the use of choice. So we can be sure that these theorems of combinatorics don't actually need choice to prove, but choice merely allows the use of powerful objects to lessen the necessary bookkeeping. 

Here then is my proposed counterexample: **Shoenfield's absoluteness theorem identifies a place where material set theories like ZFC give additional mathematical content beyond what is offered by structural set theories like ETCS, even though ZFC and ETCS + Replacement are almost bi-interpretable.**

To explain why I think this is a candidate for a counterexample, I'll do three things. First, I'll say how to interpret ETCS in ZFC, and in the process shed some light on what ETCS says. Second, I'll sketch how to prove Shoenfield's absoluteness theorem. Third, I'll say how to interpret ZFC in ETCS + Replacement. This will allow me to pinpoint why I think ZFC has extra content here, content not captured by the almost bi-interpretability. It will also clarify just what is meant by "almost bi-interpretability".

----

The [Elementary Theory of the Category of Sets](https://www.pnas.org/doi/10.1073/pnas.52.6.1506) (ETCS) is an axiomatization of the properties of the category Set. The way I think of these axioms is, they're the standard properties of sets but formulated category theoretically. So, for example, ETCS includes a version of ZFC's Powerset axiom and Infinity axiom. The main place ETCS differs from ZFC is the membership relation. In ZFC, the membership relation is the basic structure from which everything else is defined. On the other hand, ETCS prohibits general talk of membership, since it's not preserved by isomorphism. (This distinction gives rise to the "material set theory" versus "structural set theory" terminology some use.)

And this is how you interpret ETCS in ZFC: just throw out the membership relation, keeping only what is visible to category theory. Doing this in fact gives more than just ETCS, it gives a version of the Replacement axiom. (This axiom isn't in the base ETCS because it's supposed not a basic property of sets, but let's set aside that quibble.) It may appear that interpreting ETCS throws away information. But as I'll sketch later, this information can be recovered, if you have Replacement.

Let me also highlight that this interpretation is flexible. If you work just in ZF, you get a version of ETCS + Replacement without Choice. Or if you add extra axioms, you'll get structural analogues of those. Really this isn't a single interpretability result, but rather a whole family of them.

Understanding now that the membership relation is the crux of the distinction between the two approaches, let me sketch a proof of Shoenfield's absoluteness theorem. Let me first give a more precise statement of the theorem.

> **Theorem** (Shoenfield): Suppose $W \subseteq V$ is an inner model of ZF and consider a $\Pi^1\_2$ statement $\varphi$ (possibly using real parameters from $W$). Then $W$ and $V$ agree about the truth of $\varphi$.

To clarify some points. First, terminology. $V$ is the universe of sets (or if you prefer, a name for the universe you are working in). An *inner model* is a class which contains all the ordinals and is *transitive*—$x \in y \in W$ implies $x \in W$. To get from this version of the theorem to the one about not needing Choice to prove $\Pi^1\_2$ statements: take $V$ to be any model of ZF and $W$ to be Gödel's constructible universe $L$ as constructed in $V$. Gödel famously proved that $L$ satisfies ZFC (and more). So if you can prove $\varphi$ using Choice, then $\varphi$ must be true in $W = L^V$, whence $\varphi$ is true in $V$. So we didn't need Choice all along.

Now let's discuss the proof. One key lemma is a characterization of $\Pi^1\_1$ statements, those of the form "every set $X$ of natural numbers satisfies a property that can be expressed just by quantifying over natural numbers". It's well-known to logicians that $\Pi^1\_1$ statements can be associated to trees, so that the statement $\varphi$ is true if and only if its associated tree is well-founded. 

The second key lemma is the fact that well-foundedness is absolute for transitive models of ZF. That is, if $R$ is a relation in a transitive model $W$ of ZF, then $W$ thinks $R$ is well-founded if and only if it really is well-founded (i.e. in $V$). 

Combining these two lemmata gives you the theorem. Let me show just one direction to give the idea. Suppose $\varphi$ is false in $W$. Then $\neg\varphi$, a statement of the form "there exists a set $X$ of natural numbers satisfying a $\Pi^1\_1$ property $\psi(X)$", is true in $W$. Fix a witness $X \in W$ and the tree $T$ associated to $\psi(X)$. Because $W$ thinks $\psi(X)$ is true, $W$ thinks $T$ is well-founded. But then $V$ thinks $T$ is well-founded, whence it thinks $\psi(X)$ is true, whence $V$ thinks $\varphi$ is false.

If you want Shoenfield's lemma in a different context, you want these two lemmata. So what does it take to prove them?

The first, associating $\Pi^1\_1$ statements to trees, requires rather little in the way of set theory. For example, it's provable in $\mathsf{ACA}\_0$, a weak theory of second-order arithmetic. (See Chapter V of Simpson's book *Subsystems of Second-Order Arithmetic*.) So that won't be the sticking point for us.

The second lemma is where the specifics of ZF matter. To say why, let me introduce some more terminology for talking about formulae. Call a formula $\varphi(x,\ldots)$ to be $\Delta\_0$ if its quantifiers are all bounded, i.e. of the form $\exists v\_0 \in v\_1$ or $\forall v\_0 \in v\_1$. A $\Pi\_1$ formula (no superscript!) is one of the form "every set $x$ satisfies a $\Delta\_0$ property" and a $\Sigma\_1$ formula is of the form "there exists a set $x$ satisfying a $\Delta\_0$ property". Because transitive sets are closed under membership, $\Delta\_0$ formulae are absolute between transitive sets (which contain all the parameters used in the formula). Consequently, $\Sigma\_1$ formulae are *upward absolute* and $\Pi\_1$ formulae are *downward* absolute. If $w \subseteq v$ are transitive sets, then any witness for a $\Sigma\_1$ formula true in $w$ will be a witness in $v$. In the other direction, if every set in $v$ satisfies a $\Delta\_0$ property, then every set in $w \subseteq v$ satisfies that property. Consequently, if a property can be characterized in both a $\Sigma\_1$ and a $\Pi\_1$ way, then it is absolute in both directions.

The standard definition of well-foundedness is $\Pi\_1$—"for all $x$ if $x$ is a subset of the domain of $R$ then $x$ has a $R$-minimal element". There is also a $\Sigma\_1$ characterization, namely "there exists a ranking function $f$ from the domain of $R$ into the ordinals". (A ranking function is a function $f$ which satisfies $x \mathrel{R} y$ iff $f(x) < f(y)$.)

To get this $\Sigma\_1$ characterization we need two things. First, we need enough transfinite recursion to ensure we can always construct a ranking function. That's easily taken care of, so let's set it aside to focus on the important detail: Second, we need a $\Sigma\_1$ way to express "$\xi$ is an ordinal". If all we have is the $\Pi\_1$ characterization of being an ordinal, then saying there's a ranking function is $\Sigma\_2$—we need an unbounded universal quantifier inside the existential quantifier—and so it's not upward absolute. Fortunately, ZF does provide even better, a $\Delta\_0$ characterization of being an ordinal. Or maybe more precisely, ZF provides a $\Delta\_0$ encoding of ordinals as the von Neumann ordinals. By the Foundation axiom, the membership relation is well-founded. So we can express "$\xi$ is a von Neumann encoding of an ordinal" as "$\xi$ is a transitive set which is linearly ordered by $\in$". A moment's thought confirms that this is $\Delta\_0$, completing the last step to prove the lemma that well-foundedness is absolute.

----

I've been blathering on a while, so let me take a break from the more technical stuff to sum up the situation. Imagine yourself being an integer combinatorist, one who has some interest in the foundations of their field. You use nonstandard methods and ultrafilters, because they are powerful tools which make your working life easier. But you wonder whether they're truly necessary—surely these abstract creatures of the infinite cannot be essential to prove hands-on facts about finite numbers. So you talk to your set theorist colleague. Several hours of discussion later, filled with talk about the membership relation, the Foundation axiom, the von Neumann encoding of ordinals, transfinite recursion, and other set theoretic principles seemingly unrelated to your concern, you get your answer. Without having to do a bunch of tedious elementary proofs of already known results, you can be sure that they never required any fragment of Choice all along.

But ZFC is almost bi-interpretable with ETCS + Replacement. So if instead of your set theorist colleague you talked to your category theorist colleague, then they should be able to give the same fact, but without that irrelevant material stuff. Right?

Right?

<img src="{{ site.url }}/pics/padme.jpg" alt="Padme from the meme" width="400px"> 

----

Now let's talk about the interpretation in the other direction. We are living in a model of ETCS + Replacement. If you like, you can imagine we were in a ZFC model and then we threw all information about the membership relation. How do we recover that information?

The key fact is that ZFC proves that every set is uniquely determined by the structure of $\in$ beneath it. In other words, if the transitive closures of $\\{x\\}$ and $\\{y\\}$ are isomorphic as $\in$-structures, then $x = y$. In the structural world, we don't directly have material facts about membership available, so we cannot directly access these structures. But what we can do is consider equivalence classes of relations that look like $\in$-structures, equipped with an appropriate definition of a membership relation between them.

There's a few ways to do this. My preferred method goes through what I will call membership codes. A *membership code* is a binary relation $E$ with a maximum element which is well-founded and extensional. We already know what well-foundedness is, and $E$ is relational if whenever nodes $x$ and $y$ have the same set of $E$-predecessors they are the same. (In fancier terminology, $E$ satisfies the Extensionality axiom.) The idea is, $E$ looks the transitive closure of $\\{x\\}$ for some set $x$.

ETCS + Replacement is strong enough to carry out this construction, prove it has the desired properties, and show that the membership codes with an appropriate membership relationship between them satisfies ZFC. I shan't give the details—there's a lot of little things to check!—but if you're interested in a thorough write up of the construction, albeit in a different context for a different purpose, see chapter 2 of [my dissertation]({{ site.url }}/research/pubs/diss/).

Like the interpretation in the other direction, this really gives a family of results. For example, if you drop choice from ETCS + Replacement, then you get ZF at the end, not ZFC. All in all, what we get in the end is a family of almost bi-interpretability results. That is, if you start with a model of material set theory, throw away the membership relation, and then do this membership code construction, what you get at the end is isomorphic to your original model. No information was truly lost for good.

Why then is it only an almost bi-interpretation? The reason is that categorically you cannot distinguish isomorphic elements. You could have two different versions of the category $\mathrm{Set}$, one with two copies of the empty set and the other with only one. The two are equivalent as categories, but they are not isomorphic. This same phenomenon rules out a true bi-interpretation between ZFC and ETCS + Replacement. To illustrate this, let $\mathrm{Set}^1$ and $\mathrm{Set}^2$ be the categories of sets obtained from $V$, where $\mathrm{Set}^1$ has one copy of each set and $\mathrm{Set}^2$ has two copies of each set. These categories will agree on well-foundedness, will have the same (isomorphism classes of) membership codes, and will both interpret $V$ via that construction. If you run the two directions of the interpretations you get $\mathrm{Set}^1 \to V \to \mathrm{Set}^1$, which is promising, but you also get $\mathrm{Set}^2 \to V \to \mathrm{Set}^1$. This is a problem. You end up with a final model which is equivalent as a category but is not isomorphic. (Thank you to [James E. Hanson](https://james-hanson.github.io/) for this example and on correcting an earlier version of this post which claimed there was a bi-interpretation.)

(For the non-category theory-minded, let me give a similar example just about material set theory. A similar construction shows that ZFC and ZFC – Extensionality are not bi-interpretable. Say that two sets $x$ and $y$ are *extensionally equivalent* if every element $z \in x$ is extensionally equivalent to some $z' \in y$, and vice versa. It's an easy consequence of Extensionality that extensionally equivalent sets are identical, and if you don't have Extensionality then modding out by this equivalence relation gives a model of ZFC. As such, ZFC and ZFC – Extensionality can interpret each other. However there is no bi-interpretation between them. The reason is, an interpretation of ZFC – Extensionality in ZFC assigns a number to how many empty sets there are. You can have more or fewer empty sets without changing the model of ZFC you interpret. So for any would-be bi-interpretation you can find a starting model of ZFC – Extensionality so that the ending model of ZFC – Extensionality has a different number of empty sets and hence isn't isomorphic.)

This relationship, where the starting and ending models are equivalent as categories but not isomorphic, is what I chose to call almost bi-interpretation. (Hanson referred to it as *2-categorical bi-interpretation*.) The lesson I draw is, bi-interpretation is not quite the right notion to use when talking about categories, as isomorphism of categories isn't the correct notion of sameness. When working just with material models bi-interpretation is a good notion, but to include the structural approach you need a slightly different notion. I chose a less technical sounding name for this notion because I didn't want to convey the false perception that it is essentially different from the phenomenon we are looking at.

----

It's an immediate corollary of these almost bi-interpretability results that there's a version of Shoenfield's absoluteness theorem for ETCS + Replacement. Namely, if you proved a $\Pi^1\_2$ statement using ETCS + Replacement, then you didn't need Choice to get your theorem. But let's not take this as a black box. We want to understand how the ETCS-context proof goes.

One way to prove it, a strategy that you can always follow in the presence of (almost) bi-interpretability, goes like this: Consider any model of ETCS + Replacement, possibly without Choice. Do the membership code construction to get a model $V$ of ZF. Inside this model of ZF you have its copy $L$ of the constructible universe. Now run the material proof on $V$ versus $L$ to get that a $\Pi^1\_2$ statement $\varphi$ is absolute between $V$ and $L$. But $L$ also gives a model of ETCS + Replacement, including Choice (and more). So we get a smaller model of ETCS + Replacement, and $\varphi$ is absolute between our original model and that smaller model. If our proof used Choice, it gives $\varphi$ in the smaller model, whence we get $\varphi$ in the original, possibly choice-free model.

This proof is valid. But it doesn't avoid the particularities of material set theory—a global membership relation, the Foundation axiom, the von Neumann encoding of ordinals, etc. These play an essential role in the proof. The reason ETCS + Replacement can carry out this proof is precisely because it can internally mimic material set theory. 

----

It seems to me that what we have is a theorem, an important one within logic, whose only known proofs make essential use of the particularities of material set theory. This is a case rather unlike what Shoenfield tells the case is for ultrafilters in integer combinatorics. The use of material set theory isn't mere bookkeeping convenience to make proofs shorter and easier. Rather, it provides essential mathematical content.

Of course, I have been careful all this time to only call this a *proposed* counterexample, so let me now partially undermine the thrust of my point. The counterpoint is obvious: "That the known proofs of Shoenfield's absoluteness theorem go through *X* does not imply every proof must go through *X*. There could very well be a direct proof of Shoenfield's absoluteness theorem in the structural context."

Very well, that suggests the following challenge.

> **Challenge:** Provide a direct proof of Shoenfield's absoluteness theorem in the structural context.

Absent this challenge being answered, I think this counterexample stands, and demonstrates that bi-interpretability isn't enough to say that two theories have the same mathematical content.

Let me give a couple reasons why I think this challenge will go unfulfilled.

The first is to look at extant work in proving Shoenfield's theorem outside the ZFC-context. One example comes from the work of Barwise and others on admissible set theory. This work shows that weak enough fragments of ZFC cannot prove the theorem, and the important dividing line is Mostowski's collapse theorem—every extensional well-founded relation is isomorphic to an $\in$-structure.
Another example comes from second-order arithmetic. In this context, there are versions of Shoenfield's theorem. But the only proofs I know of them go through a version of membership code construction—see Chapter VII of Simpson's book. (In this context, of course, your models of set theory think every set is countable, so it's not quite like the ETCS + Replacement context.) The lesson of these examples is that the features of ZFC I focused on above do seem to play an essential role in proving the theorem.

The second reason for my skepticism is that these features of material set theory are seen as *bad* by adherents to the structural side, and it's seen as a desideratum of ETCS that it cannot directly talk about things like a global membership relation, the von Neumann encoding of ordinals, and so on. In particular, ETCS seems to not admit a $\Sigma\_1$ characterization of well-foundedness, because it only has access to a $\Pi\_1$ characterization of being an ordinal. 

----

To summarize, while material and structural set theories are almost bi-interpretable, it seems to me that there is mathematical content to be found on the material side which cannot be honestly found on the structural side. You can mimic it via the bi-interpretability constructions, but it's the material side that does all the heavy mathematical lifting. So bi-interpretability is not sufficient to say that two formal theories have the same mathematical content.

To try to draw a general lesson: I think the mere fact of bi-interpretability is not exactly what we should look at. Rather, we need to pay attention to the constructions that give the interpretations, and understand how those constructions determine the shape of proofs and constructions in the different contexts. Sometimes, the constructions will be transparent enough that the two theories have the same content, just expressed differently. Other times, like I think with Shoenfield, the constructions hide that one theory has substantial content which the other cannot directly access.

