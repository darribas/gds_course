#
## Geographic Data Science

<CENTER>
Regionalisation
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## Regionalization
## 

Unsupervised <span class="fragment">**Spatial**</span> Machine Learning

<span class="fragment">
*Aggregating basic spatial units (**areas**) **into** larger units (**regions**)*

## Regionalization

**Split** a dataset into **groups** of observations that are **similar within** the group
and **dissimilar between** groups, based on a series of 
**attributes**...

<span class="fragment"> ...with the additional constraint observations need to be
**spatial neighbors**</span>

## Regionalization {data-transition=none}

<SMALL>
<ul>
<li class="fragment current-visible"> All the methods aggregate geographical areas into a predefined number of regions, while optimizing a particular aggregation criterion; </li>
<li class="fragment current-visible"> The areas within a region must be geographically connected (the spatial contiguity constraint); </li>
<li class="fragment current-visible"> The number of regions must be smaller than or equal to the number of areas; </li>
<li class="fragment current-visible"> Each area must be assigned to one and only one region; </li>
<li class="fragment current-visible"> Each region must contain at least one area. </li>
</ul>
</SMALL>

<div style="text-align:right">
[Duque et al. (2007)](http://irx.sagepub.com/content/30/3/195)
</div>

## Regionalization {data-transition=none}

<SMALL>
<ul>
<li> All the methods aggregate geographical areas into a predefined number of regions, while optimizing a particular aggregation criterion;</li>
<li> The areas within a region must be geographically connected (the spatial contiguity constraint); </li>
<li> The number of regions must be smaller than or equal to the number of areas; </li>
<li> Each area must be assigned to one and only one region;</li>
<li> Each region must contain at least one area. </li>
</ul>
</SMALL>

<div style="text-align:right">
[Duque et al. (2007)](http://irx.sagepub.com/content/30/3/195)
</div>

## {data-background=../figs/l08_abb_london.png}

## Algorithms

* Automated Zoning Procedure (AZP)
* Arisel
* Max-P
* ...

See [Duque et al. (2007)](http://irx.sagepub.com/content/30/3/195) for an
excellent, though advanced, overview

#
## Examples

## Census geographies {data-transition=none}

<center>
<img src="../figs/l08_census.png" alt="Choropleth"
style="width:800px;height:350px;"/>
</center>

## {data-background=../figs/l08_livehoods.png data-transition=none}

[Livehoods](http://www.livehoods.org/)

#

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
