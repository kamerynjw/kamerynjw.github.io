---
layout: post
title: "Accessible math documents using LaTeX"
date: 2024-05-29
---

In Spring 2024 I had a student in an introductory-level math class whose accessibility needs included having screenreader-accessible documents. Most guides on creating accessible documents don't address mathematical content nor apply to the tools used by mathematicians. Getting this to work with my LaTeX workflow took a surprising amount of time, so I wrote this document for others in a similar position. 

A warning!
----------

As expounded on below, this uses in-production LaTeX code. Within a few years this should be out of date.

Quick summary
-----

Do the following to make your LaTeX documents play nicely with screen readers.

1. Install the most recent version of [TeX Live](https://tug.org/texlive/quickinstall.html).

2. Add the following to the top of your .tex files:

    ```
    \DocumentMetadata{testphase={phase-III,math},pdfversion = 1.7,pdfstandard=ua-1}
    \usepackage{hyperref}
    \hypersetup{pdftitle=TITLE HERE, pdfdisplaydoctitle}
    ```
	
3. Write your LaTeX as mostly as normal: avoid TikZ and a few other packages, add the `alt={ALT TEXT}` optional argument to any `\includegraphic{}`s.

4. You can check that your document is accessible using Adobe Acrobat Reader.

Why does this take any work?
---

The short answer is that making accessible documents takes work. Much of that work has been automated, but it takes work to write the software that automates it. 

The PDF file format was designed to solve the problem of having documents look the same no matter which printer is used or which computer is used to view them. The way the file format essentially works is, it consists of a bunch of info specifying “put this glyph at this location”. This *visual structure* is useful for this purpose, but it's not the same as the *semantic structure*, how it's actually read by a human. If you've ever tried to copy text from a pdf and gotten something that looks off—wrong symbols, dropped spaces, ligature issues, etc.—this is why. Your pdf didn't have the semantic structure specified. The same problem arises with screenreaders, and so many pdf files aren't readable by screenreaders. Compare this to html files, where tags are used to organize content based on its semantic structure and so screenreaders can straightforwardly interpret the content.

Newer versions of the PDF standard implement a tag system which allows the semantic structure of a document to be given, along with other accessibility needs like alt text. Of course, when creating pdfs you need to ensure that these tags are actually added.

On the face of it, it may seem like this should be a trivial problem with LaTeX. After all, a .tex file gives the semantic structure of a document, so it should just be a matter of the compiler translating that to the format the PDF standard requires. The goal is to reach that point; creating accessible documents in LaTeX should require minimal extra work. 

We aren't yet there. LaTeX is decades old, well older than the push for accessibility in documents, and as originally written it didn't remember the semantic structure from the source. A current active project is to rewrite the LaTeX engine to keep track of semantic structure and so create accessible pdfs. (See reports [here](https://www.latex-project.org/publications/indexbytopic/pdf/).) Again, this takes work, and the work is still ongoing.

While we aren't yet at a point where you can make accessible pdfs without altering how you do LaTeX, test code is available and can be used with a small bit of extra effort.

Unpacking the summary
---------

1. You need the most recent version of TeX live because this is in-development. Older versions won't have as much from the tagged pdf project implemented.

2. The `\DocumentMetadata` command tells the engine to use the test code: `phase-III` specifies the most recent (at time of writing) test phase, and `math` tells it to load the code for handling math formulae. The info about the pdf version and standard specifies which version of the PDF standard to use for the output document.

3. Some packages aren't yet implemented with the tagged pdf project, so using them will produce a non-accessible pdf file. The ones I personally saw problems with were TikZ and enumitem. You may come across others. And while most of the work can be handled programmatically, some of it, especially alt text for pictures and diagrams cannot. You do have to do that yourself.

4. Adobe Acrobat Reader has a panel you can click around to find for accessibility. It has a validator which will check that your file meets the accessibility standards. On top of that, I used its screenreader to test how my documents were read. This was only something I had to do before the semester, when I was figuring out all this stuff for the first time.

Formulae are trouble
--------

The biggest obstacle I faced with mathematical formulae. Apparently I am not alone in this; math is a bit of a vague zone for the PDF standard for accessibility. It's not clear just what the rules should be for how to present a formula to a screenreader. Should there be alt text describing the meaning? Or the LaTeX commands to create it? How do you read things like sub/superscripts? What about fractions? How do you automate whatever the solution is?

Circa January 2024, the state of the art with the tagged pdf project was that it would make it so that the pdf produced has alt text for the formula giving the LaTeX commands. But while I or any other mathematician could hear "begin LaTeX formula frac x plus 1 sqrt x end LaTeX formula" and puzzle out what that means, it's not something I could expect the student to understand.

For me, in talking with my student it was clear that they could read formulae and diagrams fine, and their screenreader needs didn't include that. So I was able to solve this by writing a small post-processing bash script which would modify the pdf file to replace the formula alt text with "math formula". 

That said, this was very recent code when I was trying to get this set up over winter break—I was running code released less than a month prior. Probably this has changed and there's better options for handling math formulae by the time you're reading this.

What other options are there?
----

The accessibility coordinator at my institution pointed me to two internal resources, neither of which worked for producing content for teaching math. Your school won't have quite the same tools, but I expect my experience is typical. One resource was an automated tool. I found it wholly inadequate for handling math; it mangled the formulae, and didn't even manage to be consistent in how it mangled them. The other resource was a real living human who would manually make pdfs accessible. This option was slow, needing two weeks of time, and so also wasn't adequate for my purposes. 

There are other attempts to enable accessible documents within LaTeX, with a few different packages making a go at it. The problem I saw when researching them is, to do this properly requires changes to the LaTeX kernel. You can't get it just with an add-on. And it didn't help that these packages were no longer maintained.

The remaining option was to not use LaTeX. Personally this would be a very last resort option. My workflow is so heavily based on LaTeX that it would be a massive time sink to use something else. And this time sink is linear in the amount of class material I have to create, as opposed to a one-time cost. But if you have other tools you like, they may have options for creating accessible documents.
