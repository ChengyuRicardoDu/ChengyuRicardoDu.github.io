---
permalink: /
title: "Chengyu Du, Biostatistics PhD Student"
description: "Chengyu Du is a doctoral student in Biostatistics at UMass Amherst working on statistical machine learning, computational biology, spatial transcriptomics, 3D genome organization, and RNA structure ensembles."
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

I am a doctoral student in Biostatistics at the University of Massachusetts Amherst, advised by Dr. Zhengqing Ouyang in the [Ouyang Lab](https://people.umass.edu/ouyanglab/). My research sits at the intersection of statistics, machine learning, and computational biology. I develop statistical and computational methods for structured, high-dimensional biological data, including spatial transcriptomics, 3D genome organization from Hi-C data, and RNA structure ensembles.

Methodologically, I am interested in kernel methods, representation learning, high-dimensional inference, scan statistics, and optimization-based approaches for recovering biological structure from sparse and noisy measurements. Previously, I completed an M.S. in Statistics at the University of Illinois Urbana-Champaign, where I worked with Prof. [Ruoqing Zhu](https://sites.google.com/site/teazrq/) on statistical learning for high-dimensional biology, and a B.S. in Mathematics and Applied Mathematics at Beijing Normal University.

{% assign p = site.data.profile %}
## Education
{% for item in p.education %}
- {{ item }}
{%- endfor %}

## Research Interests
{% for item in p.interests %}
- {{ item }}
{%- endfor %}

## Publications / Preprints
{% for pub in p.publications %}
- {{ pub.authors }}. "{{ pub.title }}." {{ pub.venue }}{% for link in pub.links %} [[{{ link.label }}]({{ link.url }})]{% endfor %}{% if pub.note %} {{ pub.note }}{% endif %}
{%- endfor %}

## Grants
{% for item in p.grants %}
- {{ item }}
{%- endfor %}

## Conference Presentations
{% for talk in p.presentations %}
- {{ talk.type }}: "{{ talk.title }}." {{ talk.event }}.
{%- endfor %}

## Research Experience
{% for exp in p.research %}
### {{ exp.title }}

{{ exp.role }}
{% for b in exp.bullets %}
- {{ b }}
{%- endfor %}
{% endfor %}
## Teaching Experience
{% for t in p.teaching %}
### {{ t.institution }}

{{ t.role }}
{% for c in t.courses %}
- {{ c }}
{%- endfor %}
{% endfor %}
## Selected GitHub Projects
{% for proj in p.projects %}
- [{{ proj.name }}]({{ proj.url }}): {{ proj.description }}
{%- endfor %}

## Honors & Awards
{% for item in p.awards %}
- {{ item }}
{%- endfor %}

## Service
{% for item in p.service %}
- {{ item }}
{%- endfor %}

## Skills
{% for s in p.skills %}
- {{ s.label }}: {{ s.value }}
{%- endfor %}
