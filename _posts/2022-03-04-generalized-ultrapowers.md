---
layout: post
title: "Generalized Ultrapowers"
date: 2022-03-04	
---

This blogpost arose from me looking at Kanovei and Shelah's paper "[A definable nonstandard model of the reals](https://arxiv.org/abs/math/0311165)", and thinking about ultraproducts over spaces more general than powerset boolean algebras.

Everyone is familiar with ultrapowers, but<!--more--> let me recall the highlights to set up the generalization. We have a first-order structure $M$, which for convenience I will assume to be relational. Additionally, we have a powerset boolean algebra $\mathcal B = \mathcal P(X)$ over a set $X$, and an ultrafilter $U$ on $\mathcal B$. We will construct the ultraproduct of $M$ by $U$ using the set $\mathcal F$ of functions $X \to M$ as points. We identify two functions $f,g \in \mathcal F$ if the set $\{x \in X : f(x) = g(x)\}$ is $U$-big. Similarly, we define the relations $R\_U$ for the ultrapower for each $R$ in the signature of $M$.

With this setup, it's an exercise to check that the identification $=\_U$ of functions is an equivalence relation, and that every relation $R\_U$ is well-defined on the equivalence classes. The key lemma, which implies that $M$ elementarily embeds into its ultrapower, is Łoś's theorem.

> **Theorem** (Łoś): Let $N$ denote the ultrapower of $M$ by $U$. Then $N \models \varphi[\bar f]$ iff the set $\{ x \in X : M \models \varphi[\bar f(x)] \}$ is $U$-big.

----

If you take a close look at the proof of Łoś's theorem, you can reason out what facts about $\mathcal B$ and $\mathcal F$ you need to prove it. Zeroth off, of course, you need that $\mathcal B$ is a boolean algebra, so the logical boolean operators don't take you outside of $\mathcal B$. Moreover, you need that the subset of $X$ on the right-hand side of the iff in the theorem is always in $\mathcal B$, lest it not fall in the range of being measured by $U$. 

> (Def) For every $\varphi$ in the language of $M$ and all $\bar f$ from $\mathcal F$, the set $\{ x \in X : M \models \varphi[\bar f(x)] \}$ is in $\mathcal B$.

Just these alone, however, won't be enough to prove Łoś's theorem. The sticking point is the quantifier step of the induction. To prove the backward implication of this step, you need to pick a single function $g$ which provides witnesses for the existential formula $\exists y\ \varphi[y,\bar f(x)]$ for different choices of inputs to $\bar f$. (Indeed, this step is why Łoś's theorem needs a fragment of AC to prove.) Let's call this the (Skolem) property, since it's basically saying $\mathcal F$ is closed under Skolem functions.

> (Skolem) For every $\varphi$ in the language of $M$ and all $\bar f$ from $\mathcal F$, there is a function $g \in \mathcal F$ so that, for every $x \in X$, if $M \models \exists y\ \varphi[y,\bar f(x)]$ then $M \models \varphi[g(x), \bar f(x)]$.

You keep looking closely at the proof of the theorem, and you will realize this is all you need. So long as $\mathcal B \subseteq \mathcal P(X)$ is a boolean algebra and $\mathcal F \subseteq {}^X M$ satisfy (Def) and (Skolem), then the proof of Łoś's theorem goes through for an ultrafilter $U$ measuring sets in $\mathcal B$.

----

This is not a novel observation on my part. Indeed, Skolem's original construction of nonstandard models of arithmetic went through this sort of construction. He looked at $M = \mathbb N$, with $\mathcal B$ being the arithmetical sets and $\mathcal F$ being the arithmetical functions. Since these are both countable, you can construct by hand a nonprincipal ultrafilter $U$ on $\mathcal B$ (use an $\omega$-enumeration of $\mathcal B$ to build a filter base, ensuring the ultra property), thereby producing a nonstandard model of true arithmetic.

For a fancier example, you can use this kind of construction to prove a hella tight theorem about models of set theory.

> **Theorem** (Keisler–Morley): Every countable model of ZFC has an elementary end-extension.

An *end-extension* $N$ of a model $M$ of set theory is one where old sets don't get new elements. Formally: if $a \in M$, $b \in N$, and $N \models b \in a$, then $b \in M$. Every outer model is an end-extension, and observe that elementary end-extensions must be *rank-extensions*—new sets have new ranks.

*Proof:* First consider the case where $M$ has a definable global well-order $<$. Let $\mathcal B$ consist of the definable (with parameters) classes of $M$, and $\mathcal F$ consist of the definable class functions. Clearly (Def) is satisfied, and the presence of a definable global well-order gives (Skolem). So the only remaining task to to build an $U$ which forces the ultrapower to be an end-extension. For this, note that it suffices that any $f \in \mathcal F$ which is bounded by some element $a \in M$ on a $U$-big set be constant on a $U$-big set. For then, $f =\_U \mathrm{const}\_b$ for some $b \in M$, so $f$ cannot be a new element.

To this end, enumerate $\mathcal F$ as $f\_0, f\_1, \ldots$, with every function being repeated infinitely often. We construct a filter base $\langle B\_n \rangle$ for $U$ in $\omega$ many steps. Start with $B\_0 = M$. For stage $n+1$, having already constructed $B\_0 \supseteq B\_1 \supseteq \cdots \supseteq B\_n$, each a proper class: First ask, is there $a \in M$ so that $f_n(x) \in a$ for all $x \in B\_n$? If no, then simply set $B\_{n+1} = B\_n$. If yes, then because $B\_n$ is a proper class there must be some $b \in a$ whose preimage under $f\_n$ is a proper class, by replacement. Pick one of these (say the $<$-least one) and define $B\_{n+1} = f^{-1}(b) \cap B\_n$.

Finally, set $U = \langle B\_n \rangle$ to consist of all $A \in \mathcal B$ which contain some $B\_n$. Manifestly, by construction any function which is bounded on a $U$-big set is constant on a $U$-big set. (This is where we use that every function appeared infinitely often in the enumeration.) And $U$ is a filter, so the only thing we have to check is the ultra property.

But this is free! If $A \in \mathcal B$, then its characteristic function $\chi\_A$ was one of the functions $f\_n$ we looked at. And since $\chi\_A$ is bounded on $M$, it's bounded on every $B\_n$. So when we first saw it, we ensured that either $A = \chi\_A^{-1}(1) \in U$ or $M \setminus A = \chi\_A^{-1}(0) \in U$. 

There's one dangling detail to finish up, and that's what to do if $M$ doesn't have a definable global well-order. That's no problem, because we can force to add one, without adding new sets. (The obvious forcing to try, where conditions are set-sized well-orders, ordered by end-extension, is $\kappa$-closed for every $\kappa$ and so doesn't add sets.) We then do the construction using the classes and class functions definable from this generic global well-order, and produce the desired ultrapower.
**QED**

I should remark that the Keisler–Morley theorem also applies to countable models of ZF, but this proof doesn't work, since we needed to be able to add a global choice function. But I like this argument more than the more general omitting types argument, because it feels much more hands-on to my non-model theorist brain. Indeed, if you carefully look at what's going on you'll see that the process of building the ultrapower is computable given $M$ and its full elementary diagram. (It's nontrivial to check that forcing is a computable procedure given these data, but let me [shamelessly shill]({{ site.url }}/research/pubs/cst-forcing/).)

I should also remark that this theorem doesn't generalize to uncountable models (unlike its arithmetical counterpart, the MacDowell–Specker theorem). 

----

Having said all that, let me talk about the Kanovei–Shelah paper I mentioned in the introduction. In this paper, they show that there is a definition, just in ZFC, for a countably-saturated elementary extension of the reals. So using their construction, you can make a canonical choice of a hyperextension of the reals, falsifying the idea that nonstandard analysis requires an arbitrary choice of hyperextension.

Their construction goes through a generalized ultrapower construction, but of a quite different flavor from using the boolean algebra of definable sets. Here's an overview of what they did. 

The problem they face is, there's no canonical way to pick an ultrafilter on $\omega$ in ZFC. (There is a canonical way if, say $V = L$, but that's an unsatisfactory cheat.) And since they're looking at a structure with the fullest possible signature—they want to include *every* relation on $\mathbb R$ in the signature—they can't do tricks with lining up a countable set. Instead they amalgamate all the ultrafilters on $\omega$, in a process akin to a finite-support iteration, in such a way to produce a definable ultrafilter on a certain boolean algebra $\mathcal B$, with corresponding functions $\mathcal F$. It's clear that both (Def) and (Skolem) hold, and so everything works.

In more detail: First, fix the structure $M$ we care about. This could be $\mathbb R$ in the full language, but we can be more general.

Let $A$ consist of all functions $a : \mathfrak c \to \mathcal P(\omega)$ whose range, call it $D\_a$ is an ultrafilter on $\omega$. Observe that $A$ is lexicographically ordered, and so can be linearly ordered in a canonical way. In effect, $A$ amounts to a (non-well-founded) enumeration of all the ultrafilters on $\omega$, with repetition.

The boolean algebra $\mathcal B$ consists of the clopen sets in ${}^A\omega$, given the product topology. That is, say that $X \subseteq {}^A\omega$ is *concentrated* on the finite set $u \subseteq A$ if, for every $x,y \in A$, if $x \upharpoonright u = y \upharpoonright u$ then $x \in X$ iff $y \in X$. Then $\mathcal B$ consists of the subsets of ${}^A\omega$ which are concentrated on some finite set.

The corresponding functions $\mathcal F$ are those $f : {}^A\omega \to M$ which are concentrated on a finite set. To be explicit, $f$ is *concentrated* on $u$ if for every $x,y \in A$, if $x \upharpoonright u = y \upharpoonright u$ then $f(x) = f(y)$. 

It's an easy exercise that $\mathcal B$ forms a boolean algebra. And with a small amount of detail chasing you can see that if a set (function) is concentrated on $u$ and $v$ then it's concentrated on their intersection and on any superset of them.
Consequently, any set (function) has a *least* set on which it is concentrated, call it the *stem* of the set (respectively function). We have a canonical choice of concentration to look at for every set (function), which matters for definability purposes later.

That (Def) and (Skolem) are satisfied comes down to the fact that each instance of satisfaction is finitary. If you know the parameters $\bar f$, then looking at the unions of their stems is enough to find a concentration for the set $\{ x \in X : M \models \varphi[\bar f(x)] \}$. So by the general machinery, we can take ultrapowers using $\mathcal B$ and $\mathcal F$.

Knowing this, let's define the Kanovei–Shelah ultrafilter $D$ on $\mathcal B$. The point is, for each $a \in A$ we have an associated ultrafilter $D\_a$ on $\omega$. And we can extend this to finite $u \subseteq A$ by taking a sort of product of the $D\_a$ for $a \in u$: define $D\_u$ on ${}^u\omega$ to be those $X$ whose projection to each coordinate is in $D\_a$. Finally, define $D$ to consist of all sets $X$ whose restriction to their stem $u$ is in $D\_u$. There's some work to check that this really does give an ultrafilter, but I'll skip that tedium.

The point here is, this $D$ is definable (from the parameter $M$, which we of course need to say the codomain of the functions). We have canonical choices for everything we needed to pick, and so the only role of AC is to ensure there's enough ultrafilters around to make the construction work. So we can definably take an ultrapower of $\mathbb R$ using $D$, and so definably get an elementary extension of $\mathbb R$.

There is one small hurdle left, however, which is that this ultrapower won't be countably saturated, since $\mathcal B$ and $\mathcal F$ were based on having *finite* supports. But this hurdle is easily overcame. If we do an $\omega\_1$-iteration of this process, taking direct limits at limit stages, then we do get countable saturation. (Because you can catch your tail with realizing types with countably many parameters at some large enough countable stage in the iteration.) And if you want more saturation, just take a longer iteration.

All in all, there's a canonical choice for a setting in which to do nonstandard analysis, which is neat.

----

These are the only two examples I know of for this kind of generalized ultrapower construction. (There's kind of a third, namely working internally to a smaller universe $V\_0$ which doesn't have the full powerset of $X$ and looking at $\mathcal P(X)^{V\_0}$. But that doesn't feel like a genuine different kind of thing.) Part of why I found the Kanovei–Shelah construction so exciting was seeing this construction be useful outside of the definable ultrapower context.



