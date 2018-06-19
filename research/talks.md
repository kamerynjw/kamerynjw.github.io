---
layout: page
title: Talks
permalink: /research/talks/
---

An exhaustive listing of my talks can be found here, split up by talks at seminars versus talks at conferences.

Seminar Talks
====

{% for talk in site.data.semtalks %}
* [{{ talk.title }}]({{ site.baseurl }}/research/talks/{{ talk.href }}), {{ talk.other }} ({{ talk.date }}).
{% endfor %}

Conference Talks
====

{% for talk in site.data.conftalks %}
* [{{ talk.title }}]({{ site.baseurl }}/research/talks/{{ talk.href }}), {{ talk.other }} ({{ talk.date }}).
{% endfor %}

