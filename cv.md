---
layout: page
title: Online CV
permalink: /cv/
---

See [here]({{ page.url }}kwilliams-cv.pdf) for a fuller pdf CV.

Academic History
====

University of Hawaiʻi at Mānoa
----
Temporary Assistant Professor

Fall 2018 to present

Education
====

Ph.D. in Mathematics May 2018
----
The Graduate Center, The City University of New York

Dissertation Advisor: [Joel David Hamkins](http://jdh.hamkins.org)

Dissertation: [*The Structure of Models of Second-order Set Theories*]({{ site.baseurl }}/research/pubs/diss)

B.S. in Mathematics, Dec 2012
----
Boise State University (High Honors)

Minor in Computer Science

Publications
====

{% for pub in site.data.pubs %}
* {{ pub.authors }}, {% if pub.href == "" %} {{ pub.title }}, {% else %} [{{ pub.title }}]({{ site.baseurl }}/research/pubs/{{ pub.href }}), {% endif %} {{ pub.othercite }}
{% endfor %}

Teaching and Educational Experience
====

* (2018–present) University of Hawaiʻi at Mānoa. Temporary Assistant Professor. As part of my duties I taught classes ranging from freshman calculus to graduate-level.

* (2017–2018) Bronx Community College, CUNY. Quantitative reasoning fellow. In this interdisciplinary program I partnered with non-mathematics faculty to promote the teaching of quantitative reasoning and the use of mathematics across the curriculum.

* (2013–2017) Brooklyn College, CUNY. Graduate teaching fellow and lecturer. I was instructor of record for my classes, mainly calculus and precalculus. My final year at Brooklyn College I taught classes in their Brooklyn College Academy program, an early college program where high school juniors and seniors take college classes for credit.

Conference Talks
====

{% for talk in site.data.conftalks %}
* [{{ talk.title }}]({{ site.baseurl }}/research/talks/{{ talk.href }}), {{ talk.other }} ({{ talk.date }}).
{% endfor %}

Seminar Talks
====

{% for talk in site.data.semtalks %}
* [{{ talk.title }}]({{ site.baseurl }}/research/talks/{{ talk.href }}), {{ talk.other }} ({{ talk.date }}).
{% endfor %}

Technical Experience
====

* Winter to Summer 2013, I was a software engineer at Clearwater Analytics, LLC in Boise, Idaho. 

* Technical Skills: LaTeX, Linux, Java, Python, SQL.
