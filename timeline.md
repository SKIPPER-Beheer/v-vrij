---
layout: timeline-entry
description: "TIJDLIJN"
title: ": TIJD-LIJN:"
active: timeline
header-img: "img/postcover/bpc00034.jpg"
permalink: /timeline/
---





<body class="journal">
<div class="archive">
  <h1 class="archive-title" style="display:inline-block;">: TIJD-LIJN: </h1>
<!-- verwijderen wegens gebrek aan functie. mogelijk twee soorten tags & categorieën?
<div style="font-family: Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif; display:inline-block;margin-left:.5em;">
    Doorzoek met <a href="{{ site.baseurl }}/timeline/category/">Categorie</a> or <a href="{{ site.baseurl }}/timeline/tag/">Tag</a> 
  </div>-->
</div>

<section class="section--postsWrapper">
  <div class="container">
    <div class="blockGroup">
      <ul class="blockGroup-list">
<!---This is the top page with time-line boxes per year, akin to the journal listpage with the paginator.-->
<!--- Opmaak van de pagina --->
<div class="disclaimer" style="color:ivory; font-size:2rem;text-align:center;">
<h1 style="color:orange; font-size:2vw;line-height:3;font-weight:bold">: Tijd-lijn van de VRIJHEDEN als het ERF-DEEL: </h1>
<br>
<b><u>: DISCLAIMER:</u></b><br><br>
<div class="disclaimer-tekst" style ="width: 90%;margin:auto; text-align:left;">
Deze tijdlijn is met zorg samengesteld met het doel van kennis-overdracht zonder enige waarborg.
Verifiëer de gegevens, lees de bronnen, doe nazoekwerk.
Elk deel van deze tijdlijn bevat een uitgebreider verhaal, bereikbaar door op het plaatje te klikken. Dit brengt je naar een andere pagina met uitgebreidere vracht.
<br>
<br>
Veel plezier met lezen, onderzoeken, en concluderen!
</div>
<br>
<p></p>
<br>
<br>
</div>
<!--- Cycle door de tijd-lijn delen--->
<div class="tijdlijn">
  <div class="tijdlijn">

    {% assign colors = "bg-1,bg-2,bg-3,bg-4,bg-5,bg-6,bg-7" | split: "," %}
    {% assign timeline_entries = site.timeline | sort: 'year' %}

    {% for entry in timeline_entries %}

    <!-- LEFT / RIGHT alternation (Jekyll 3 compatible) -->
    {% assign index0 = forloop.index0 %}
    {% assign is_even = index0 | modulo: 2 %}
    {% if is_even == 0 %}
      {% assign box_side = "left" %}
    {% else %}
      {% assign box_side = "right" %}
    {% endif %}

    <!-- Color cycling (Jekyll 3 compatible) -->
    {% assign color_index = index0 | modulo: 7 %}
    {% assign color = colors[color_index] %}

   <div class="tijdlijn-container {{ box_side }}">
      <div class="tijdlijn-content">
        <div class="tijdlijn-kop {{ color }}">
          <div class="tijdlijn-jaar-vak">{{ entry.year }}</div>
          <div>{{ entry.title }}</div>
        </div>
        <div class="tijdlijn-abstract">
          {{ entry.abstract }}
        </div>
        <a href="{{ entry.url | relative_url }}">
          <img class="tl-img" src="{{ entry.image | relative_url }}" alt="{{ entry.title }}" data-no-retina>
        </a>
      </div>
    </div>
  {% endfor %}-->
  </div>
</div>