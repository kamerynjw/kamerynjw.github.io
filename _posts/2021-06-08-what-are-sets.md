---
layout: post
title: "What are sets?"
date: 2021-11-04
---

There's a piece of pedagogical practice in maths which I hate. 

Sets are ubiquitously useful in mathematics, so any student of mathematics will have to learn about them. The first definition given is usually something like the following, let's call it the *proto-definition*:

> A set is a well-defined collection of objects.

So, for example, there is the set of all real numbers, the set of all polynomials with at least one root, the set of all sets of real numbers, and so on. If you have some property $P(x)$ which can be true or false of objects $x$, then there is a set $\\{x : P(x)\\}$ of all objects $x$ for which $P(x)$ is true.

This picture of sets is good for a first approximation, but it has a serious flaw.
<!--more-->
The problem with the proto-definition is that it admits impossible objects, sets which cannot exist without a contradiction. There's several well-known paradoxical sets, but probably the best-known is the Russell set $R$ of all sets $x$ so that $x \not \in x$. This $R$ is a set according to the proto-definition—sets are perfectly good objects and can be elements of other sets, and asking whether $x \in x$ is a perfectly fine question to ask about a set $x$. The paradox arises when we ask whether $R \in R$. If yes, then by the definition of $R$, we conclude $R \not \in R$. If no, then again by the definition, $R \in R$. So no matter what we get a contradiction.

It's depressingly common for a mathematics classroom to give this proto-definition, introduce the Russell set and show it's paradoxical, and then stop. I think this is terrible pedagogy. It's certainly good to point out that the proto-definition of sets has problems—because it does!—but it's bad to not say how to resolve the problems to get an adequate concept of set. In an asshole move, we destroy the floor beneath students' feet without building a replacement for them.

There is a better picture of what sets are, but many maths students will go through a whole degree without ever being shown it. A full explanation is the domain of a dedicated set theory course. But the big picture, without getting into the gritty details, can be explained without excessive background. (For example, someone who has taken an American-style intro-to-proofs class is in a position to understand this picture.) This blog post is my attempt at such an explanation.

----

The trouble with the proto-definition is that it is too permissive; it admits too many objects, and so paradoxical objects slip in. If we are to resolve the problem, we must have a narrower concept of set. That is, all our objects we admit as sets will be well-defined collections, but we will have to be more restrictive than with the proto-definition. Of course, we could be too restrictive. After all, we could "resolve" the problem by declaring that nothing is a set, and thereby avoid any paradoxical sets! We want to strike a balance: be permissive enough that we have all the sets we want to do mathematics, but not so permissive so as to let paradoxical objects in.

The proto-definition is what one might call a *top-down* explanation of what a set is. It gives a broad definition that yields all sets in a single step. The better approach, known as the *iterative conception* of set or the *cumulative hierarchy*, is *bottom-up*: we start with some basic objects, and then inductively build upward from there stage by stage to include more and more sets.

Our starting point will be non-set objects, call them *urelements*. These could include, for example, numbers. But I'm going to purposely be a bit vague here about what we want to take for urelements, because as we'll discuss later, this doesn't really matter. Let's call this starting point stage $0$. At stage $1$ we introduce our first sets. Namely, the sets introduced at stage $1$ are all sets whose elements are urelements. In other words, the sets in stage $1$ are the sets which are elements of $\mathcal P(U)$, the *powerset* of the set $U$ of urelements. 

Let's be a bit careful with that name, however. We called it a power*set*, but is it a set? The only sets we've admitted so far are those whose elements are all urelements. But $\mathcal P(U)$ doesn't have urelements as elements—its elements are sets—so it's not (yet!) a set. The fix is to keep building upward. For a first attempt, let's try the following: For stage $2$, we add in the sets whose elements came from stage $1$—that is, add in the sets which are elements of $\mathcal P(\mathcal P(U))$. This includes, for example, $\mathcal P(U)$ as a set, so the powerset really is a set. 

This first try isn't quite what we want, however. The trouble is that it doesn't allow sets of mixed type. We have the stage $1$ sets, whose elements are urelements, and we have the stage $2$ sets, whose elements are stage $1$ sets. But we don't have sets, like $\\\{2,\mathbb N\\}$, whose elements can be either urelements or stage $1$ sets. (These sets may be a bit weird, but if we're going to have a general concept worth a damn we're gonna have to include some weird sets.) The fix is easy though: the stage $2$ sets are the sets whose elements are either stage $1$ sets or urelements. Let's rephrase this to a simpler statement, one which is easier to generalize: the stage $2$ sets are the sets whose elements are objects of stage $<2$.

In general, the inductive step goes like this. Having already constructed stages $0$ through $n$, stage $n+1$ gives us sets whose elements are objects of stage $<n+1$. 

This gives us all finite index stages, but we can keep going. We can have a stage after all the finite index stages, call it stage $\omega+1$, to consist of sets whose elements are objects of stage $n$ for some finite $n$. Then go again: stage $\omega+2$ gives sets whose elements are objects of stage $<\omega+2.$ And so on to define stage $\omega+n$ for all finite $n$. And then we can go past another limit stage to get stage $\omega+\omega+1$ consisting of sets whose elements are objects of stage $n$ or stage $\omega+n$ for some finite $n$. 

Having the basic idea in mind, let me return to the remark that it doesn't really matter what we take as the urelements. Suppose, for instance, that we had the real numbers among the urelements but not the complex numbers. Is this a problem? It turns out not to be a problem. We can build an isomorphic copy of $\mathbb C$ from pairs of real numbers, so by going up a few stages in the iterative construction we get a copy of $\mathbb C$. (Technical detail: to do this, we need to be able to code ordered pairs as (unordered) sets. There's multiple ways to do this. Perhaps the best known in Kuratowski's: $(x,y) = \\{\\{x\\},\\{x,y\\}\\}$. It is an exercise to check that this lets you distinguish the first versus second element in an ordered pair.)

What if we didn't start out with the real numbers in the urelements? We can construct $\mathbb R$ as, for example, Dedekind cuts of rational numbers. And rational numbers can be constructed as equivalence classes of natural numbers. So if we have the natural numbers we can find a copy of $\mathbb R$ as a set of sets of ... sets of natural numbers, in some finite stage of our construction.

Indeed, it turns out we don't need *any* non-set objects. For example, here's one way to code natural numbers as sets. Let $0$ be coded by the empty set (which we added in at stage $1$). Then given a set coding $n$—let me abuse notation and denote that set simply as $n$—let $n+1$ be coded by the set $n \cup \\{n\\}$. An inductive argument shows that the set $n$ was added at stage $n+1$. (If something seems circular here, we'll come back to that issue shortly.) And because we have the successor operation $+1$ we can inductively define $+$, $\times$, and so on, giving an isomorphic copy of $\mathbb N$ where everything is a set. Call this isomorphic copy $\omega$, because that's its usual name. Note that $\omega$ doesn't show up as a set until stage $\omega+1$, giving us a first example of where we want to go beyond finite stages.

Because we can code any mathematical object as a set, it suffices to have sets as our only objects and to completely dispense with urelements. This is the standard approach among set theorists, because the parsimony makes some arguments simpler. And the cost is nil, because once you know you have a copy of a mathematical object you can just use it and not worry about where it came from. Like how after showing you can construct real numbers as Dedekind cuts you can just work with real numbers and not worry about the implementation details. But if you prefer to include non-set objects, there's no harm. It's known that the two approaches are equivalent, proving the same theorems.

With this simplified ontology, our starting stage $0$ is to start with nothing, and build up from there. Let's introduce some notation. Let $V\_\alpha$ denote the set of all sets which appear by stage $\alpha$. (This is a set, because $V\_\alpha$ appears by stage $\alpha+1$.) We can then give the following inductive definition, which amounts to a distillation of the above explanation:

* $V_0 = \emptyset$;

* $V\_{\alpha+1} = \mathcal P(V\_\alpha)$; and

* $V\_\gamma = \bigcup_{\alpha < \gamma} V\_\alpha$ if $\gamma$ is a limit stage.

* Finally, the sets are exactly those objects which occur at some stage $\alpha$ of this iterative construction.

A couple minor comments. First, you can prove from this definition that $V\_\alpha \subseteq V\_\beta$ if $\alpha$ is an earlier stage than $\beta$. (The construction being iterative, it is naturally proved by induction.) That is, we get for free that each stage includes all elements from previous stages, and so we automatically jump the small hurdle we faced with urelements. 

Second, when doing cumulative constructions of transfinite length, it's usually convenient to collect everything so far at limit stages, and so only introduce new objects at successor stages. Here, if a set $x$ is in $V\_\gamma$ for a limit stage $\gamma$, then by definition $x$ is in $V\_\alpha$ for some earlier stage $\alpha < \gamma$. So the limit stages don't introduce any new sets, they just collect all the previous stages together. This was passed over in the above explanation with urelements, which is why we seemingly skipped stage $\omega$ and went straight to stage $\omega+1$.

We have a copy of the natural numbers in $V\_{\omega+1}$. And so most of the familiar objects of mathematics appear by $V\_{\omega+\omega}$, the second limit stage. So this refinement of the proto-definition gives us enough sets to do the mathematics we want to do. 

Why does this definition forbid impossible objects like the Russell set? Recall the would-be definition of the Russell set: $R = \\\{ x : x \not \in x\\}$. In order for $R$ to be a set, it would have to occur at some stage $\alpha$. But we can see that this never happens. For example, the set $V_\alpha$ first appears as a set at stage $\alpha+1$, and $V\_\alpha \not \in V\_\alpha$. (Indeed, you can prove $x \not \in x$ for every set $x$ according to the iterative conception view of sets.) That is, the Russell 'set' would have to occur past stage $\alpha$ for every $\alpha$, and so never gets formed.  Other paradoxes of size, such as the Burali–Forti paradox, get ruled out for the same reason: the paradoxical 'sets' they are based on don't show up by any stage $\alpha$, and so aren't actually sets. In particular, there is no set of all sets.

Does this mean there are no paradoxical sets lurking in the cumulative hierarchy? We've seen that the known examples are avoided—and this includes more modern, more sophisticated examples, such as that furnished by Kunen's inconsistency theorem—but maybe there's a different, more subtle species hiding. 

All our knowledge is fallible, and we cannot 100% rule out the possibility of paradox. (We can't even 100% rule out the possibility that finite arithmetic has paradoxes!) But we can be very confidant that we are safe. Explaining why is a big topic, so let me briefly give two reasons beyond that this concept avoids the known issues. First, in the past century or so we have developed a highly detailed understanding of the cumulative hierarchy. If there were paradoxical sets lurking, it's rather probable that we would've found them by now. Second, the iterative conception of set doesn't furnish us with a single formal concept, but rather a whole hierarchy of stronger and stronger concepts. So if we did find a paradox, we could do damage control, see just how bad it is, and (hopefully!) determine that the vast majority of maths is untouched. 

This hierarchy of stronger and stronger conceptions of sets allowing more and more objects as sets can be measured by how many stages are in the construction. Stages are *ordinals*, the order-types of well-orders. Just like $\mathbb N$ being well-ordered allows us to do iterative constructions with the natural numbers as stages, we can do transfinite iterative constructions by allowing infinite ordinals as stages. The more stages allowed, the more sets you get. We've seen a sketch of why having stages below the ordinal $\omega+\omega$ is enough to construct most mathematical objects, but sometimes we need to go longer. For example, some work in category theory needs to go beyond the stage given by an *inaccessible cardinal*, a kind of really long ordinal. (In brief: $\kappa > \omega$ is inaccessible if (a) there is no cofinal function $f : \alpha \to \kappa$ for an ordinal $\alpha < \kappa$ and (b) if $\alpha < \kappa$ then the powerset of $\alpha$ is smaller in cardinality than $\kappa$.)

So beyond its use as possible damage control, this hierarchy gives us a yardstick to measure just what is needed for such and such bit of mathematics.

(An aside: 20th century and 21st century set theory has, in part, been concerned with the question of how far this hierarchy can go. And it's been discovered that seemingly dizzily high ordinals can have connections to small objects, such as what's true about reals and sets of reals.)

----

Let me close by briefly addressing the issue of axioms. After all, a common way lecturers handwave the Russell paradox away for students is to say that Axiomatic Set Theory™ fixes the problem, and yet this blog post has shied away from talking about axioms. That was an intentional move on my part: just saying "here's some axioms" doesn't fix any problem. If a concept has a problem, you want to describe a better version of the concept that avoids the problem. And then, if you're so inclined, you can write down axioms to describe this better version.

The standard basic axioms to (partially!) describe this cumulative hierarchy picture of sets are ZFC, the Zermelo–Fraenkel axioms. For example, ZFC's axiom of infinity ensures there's at least $\omega$ many stages. (Technical detail: You have to formally phrase it more carefully than that, since how do you say what $\omega$ is without already having that it exists?) For another example, ZFC's powerset axiom ensures that you always have a next stage in the cumulative hierarchy.

These axioms are far stronger than what's needed for most math. That's okay! Strong axioms makes your life easier by not requiring you to carefully check whether you have enough power to carry out your desired constructions. So if you desire, you can simply not worry about what axioms you're using and just do your work. On the other hand, if you do like to think about questions of logical strength, there's a hierarchy of formal systems corresponding to how many stages you require, whether less or more than what ZFC requires. (Confession: things are subtler than just looking at number of stages, but this is a decent enough first approximation that I hope you forgive me for this slight mistruth.)

----

So there's a picture for what sets are that avoids the problems with the proto-definition, while being permissive enough to let us do what we want with sets. 
