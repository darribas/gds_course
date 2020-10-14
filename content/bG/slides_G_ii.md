#
## Geographic Data Science

<CENTER>
Non-spatial clustering
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>


#
## Non-spatial clustering
## 

**Split** a dataset into **groups** of observations that are **similar within** the group
and **dissimilar between** groups, based on a series of **attributes**

##

**Machine learning**

<div class="fragment current-visible">
  The computer *learns* some of the properties of the dataset without the
  human specifying them
</div>

**Unsupervised**

<div class="fragment current-visible">
  There is no a-priori structure imposed on the classification $\rightarrow$
  before the analysis, no observations is in a category
</div>

## Intuition

<center>
<img src="../figs/l08_split.png" alt="Clustering"
style="width:750px;height:450px;"/>
</center>

## K-means 

- Most popular clustering algorithm
- Good but not perfect
- Watch video for int

## More clustering...

* Hierarchical clustering
* Agglomerative clustering
* Spectral clustering
* Neural networks (e.g. Self-Organizing Maps)
* DBSCAN
* ...

Different properties, different best usecases

See [interesting comparison](http://scikit-learn.org/stable/modules/clustering.html#overview-of-clustering-methods) table

#
## Geodemographic analysis
## Geodemographic analysis

<table>
<col width="70%">
<col width="30%">
<tr>
<td style="vertical-align:top">

* 1970’s, Richard Webber
* **Identify similar neighborhoods** $\rightarrow$ Target urban 
  deprivation funding
* **Public** Sector (policy) $\rightarrow$
  **Private** sector (marketing and business intelligence)
</td>
<td><img src="../figs/l08_predictive_postcode.jpg"
alt="Predictive Postcode"/></td>
</table>

## {data-background=../figs/l08_oac.png data-transition=none}

[Source](http://maps.cdrc.ac.uk)

#

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
