---
layout: page
title: About
permalink: /about
---

<h2>Experience<hr size="4" noshade color="black" />
{% for emp in site.data.about.jobs %}
<h3>{{ emp.employer }}</h3>
<hr/>
  {% for pos in emp.positions %}
    <h4>
      <i>{{ pos.title }}</i>
      <code>({{pos.start-date.year}}-{{ pos.end-date.year }}) {{ pos.location }}</code>
    </h4>
    <ul>
    {{ pos.desc }}
    </ul>
  {% endfor %}
  <br/>
{% endfor %}

<h2>Education<hr size="4" noshade color="black" />
{% for item in site.data.about.education %}
  <h4>
    {{ item.degree }},
    <i>{{ item.school }}</i>
    <code>({{item.start-date.year}}-{{ item.end-date.year}})</code>
  </h4>
{% endfor %}

<h2>Skills<hr size="4" noshade color="black" /></h2>

<table>
<colgroup>
<col width="25%" />
<col width="75%" />
</colgroup>
<tbody>
{% for skill in site.data.about.skills %}
<tr>
  <td markdown="span">{{ skill.skill }}</td>
  <td markdown="span">{% for thing in skill.items %}{{ thing }}{% unless forloop.last %}, {% endunless %}
  {% endfor %}</td>
</tr>
{% endfor %}
</tbody>
</table>


<h2>Certificates<hr size="4" noshade color="black" /></h2>
{% for item in site.data.about.certificates %}
<ul style="line-height:80%">
  <li><a href="{{ item.link }}">{{ item.title }}</a>, {{ item.org }}</li>
  <!-- <br> -->
</ul>
{% endfor %}