---
layout: archive
title: "Publications"
permalink: /publications/
author_profile: true
---

{% if site.author.googlescholar %}
<div class="wordwrap">You can also find my articles on <a href="{{ site.author.googlescholar }}">my Google Scholar profile</a>.</div>
{% endif %}

{% include base_path %}

## Journal Articles

{% assign journals = site.publications | where: "category", "manuscripts" | sort: "date" | reverse %}
{% for post in journals %}
  {% include archive-single.html %}
{% endfor %}

## Conference Papers

{% assign conferences = site.publications | where: "category", "conferences" | sort: "date" | reverse %}
{% for post in conferences %}
  {% include archive-single.html %}
{% endfor %}

---

## Patents

**Granted**

- Indian Patent No. 566655 — "A ReRAM device for low power operation and a method for fabrication thereof"

**Filed**

- Application No. 202341055188 — "Apparatus for Storing Information on a Semiconductor Device, and Method Thereof"
