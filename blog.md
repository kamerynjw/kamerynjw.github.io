---
layout: page
title: Kameryn's Web Log
permalink: /blog/
---

<div class="home">


  <ul class="post-list">
    {% for post in site.posts %}
      <li>
        <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
        <a class="post-link" href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a>
		{{ post.excerpt }} <p>[<a href="{{ post.url | prepend: site.baseurl }}"><small>would you like to know more?</small></a>]</p>
      </li>
    {% endfor %}
  </ul>
</div>

  (I am currently in the progress of porting content over from <a href="https://kamerynblog.wordpress.com">my old site</a>. If something is not yet here you should look there.)
