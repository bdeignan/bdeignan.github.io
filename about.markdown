---
layout: page
title: About
permalink: /about/
---

{% for item in site.data.about.jobs %}
  <h3>{{ item.title }}</h3>
  <ul>
	Data: {{ item.start-date }}
  </ul>
{% endfor %}
