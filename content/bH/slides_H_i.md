#
## Geographic Data Science

<CENTER>
Point Patterns
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## The *point* of points
## Points like polygons

Points *can* represent **"fixed" entities**

<span class='fragment'>
In this case, points are **qualitatively** similar to **polygons/lines**

<span class='fragment'>
The **goal** here is, taking location fixed, to model other aspects of the
data

## Points like polygons

Examples:

<ul>
<li> Cities (in most cases) </li>
<li> Buildings </li>
<li> Polygons represented as their centroid </li>
<li> ... </li>
</ul>

## When points are not polygons

Point data are not only a different geometry than polygons or lines...

<span class="fragment">
... Points can also represent a fundamentally different way to approach spatial analysis

## Points unlike polygons

<ul>
<li class="fragment current-visible">  Rather than exhausting the entire space, points can be **events** subject to
  **occur anywhere** </li>
<li class="fragment current-visible"> The **location** of the event is **part** of what we are trying to understand/**model** </li>
<li class="fragment current-visible"> The interest focuses on **characterizing** the **pattern**
that the points follow **over space**
</ul>

## A few examples...

## {data-background=../figs/l09_crime.png}

[[Source](http://www.crimemapping.com/map.aspx?aid=3db8cf99-a73b-46d2-b218-bd24cf491577)]

## {data-background=../figs/l09_trees.png}

[[Source](http://jillhubley.com/project/nyctrees/)]

## {data-background=../figs/locals.png data-background-size=contain}

#
## Point patterns

## Point patterns

Distribution of **points over** a portion of **space**

Assumption is a point can happen anywhere on that space, but only happens in
specific locations

<div class='fragment'>
* **Unmarked**: locations only
* **Marked**: values attached to each point
</div>

##

**`Point Pattern Analysis`**

Describe, characterize, and explain point patterns, focusing on their **generating process**

* <u>Visual exploration</u>
* *Clustering* properties and <u>*clusters*</u>
* Statistical modeling of the underlying processes


#

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

