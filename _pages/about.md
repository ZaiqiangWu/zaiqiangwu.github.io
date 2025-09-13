---
permalink: /
title: ""
author_profile: true
redirect_from: 
  - /about/
  - /about.html
---

# About me

- I am a PhD student in the Computer Science Department at the University of Tokyo, advised by [Prof. Takeo Igarashi](https://www-ui.is.s.u-tokyo.ac.jp/~takeo/index.html).
- My research interests lie in computer vision and computer graphics, especially their applications in virtual try-on.


# Publications

<ul>{% for post in site.publications reversed %}
    {% include archive-single-cv.html %}
  {% endfor %}</ul>