#
## Geographic Data Science

<CENTER>
Global Spatial Autocorrelation
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>


#
## **Global** Spatial Autocorr.
## **Global** Spatial Autocorr.

**<i>"Clustering"</i>**

*Overall trend where the distribution of values follows a particular pattern
over space*

<span class="fragment">
**[Positive]** Similar values close to each other (high-high, low-low)

<span class="fragment">
**[Negative]** Similar values far from each other (high-low)

<span class="fragment">
How to measure it???

## Moran Plot

* Graphical device that displays **a variable** on the horizontal axis against **its spatial lag** on the vertical one
* Variable and spatial weights matrix are preferably **standardized**
* Asssessment of the overall association between a variable in a given
  location and in its *neighborhood*

##

<center>
<img src="../figs/l06_imd_score_choro.png" alt="IMD Choropleth"
style="width:450px;height:450px;"/>
<span class="fragment"> 
<img src="../figs/l05_moranplot_std.png" alt="IMD Moran Plot"
style="width:450px;height:450px;"/>
</center>

## Moran's I

**Formal test** of global spatial autocorrelation

**Statistically** identify the presence of clustering in a variable

Slope of the Moran plot

Inference based on how likely it is to obtain a map like observed from a
purely random pattern

<div class="fragment">
<script type="math/tex; mode=display">
I = \dfrac{N} {\sum_{i} \sum_{j} w_{ij}} \dfrac {\sum_{i} \sum_{j}
w_{ij}(Z_i) (Z_j)} {\sum_{i} (Z_i)^2}
</script>
</div>


#
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
