---
layout: page
title: Research
permalink: /research/
---

My main research interests are in set theory. More specifically, I have worked on the model theory of second-order set theory (set theory with both sets and classes as objects) and on the foundations of and applications of class forcing. More broadly, I am interested in set theory's connections to other areas of logic and to philosophy of mathematics.


My Publications
----

{% for pub in site.data.pubs %}
* {{ pub.authors }}, {% if pub.href == "" %} {{ pub.title }}, {% else %} [{{ pub.title }}]({{ site.baseurl }}/research/pubs/{{ pub.href }}), {% endif %} {{ pub.othercite }}.
{% endfor %}

Selected Talks
----

(See [here]({{ site.baseurl }}/research/talks) for a list of all talks.)

{% for talk in site.data.talks %}
* [{{ talk.title }}]({{ site.baseurl }}/research/talks/{{ talk.href }}), {{ talk.other }} ({{ talk.date }}).
{% endfor %}

