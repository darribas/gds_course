#
## Geographic Data Science

<CENTER>
Local Spatial Autocorrelation
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## **Local** Spatial Autocorr.
## **Local** Spatial Autocorr.

**<i>"Clusters"</i>**

*Pockets of spatial instability*

Portions of a map where values are correlated in a particularly strong and
specific way

<span class="fragment">
**[High-High]** + SA of *high* values (*hotspots*)

<span class="fragment">
**[Low-Low]** + SA of *low* values (*coldspots*)

<span class="fragment">
**[High-Low]** - SA (*spatial outliers*)

<span class="fragment">
**[Low-High]** - SA (*spatial outliers*)

## LISAs

**L**ocal **I**ndicators of **S**patial **A**ssociation

Statistical tests for **spatial cluster detection** $\rightarrow$ Statistical significance

**Compares** the **observed** map with many **random**ly generated ones to see how likely
it is to obtain the observed associations **for each location**

<div class="fragment">
<script type="math/tex; mode=display">
I_i = \frac{Z_i}{m_2} \sum_j W_{ij} Z_j \; \; ; \; \;  m_2= \frac{\sum_i Z_i^2
}{N}
</script>
</div>

##

<center>
<img src="../figs/l06_brexit_choro.png" alt="Choropleth"
style="width:450px;height:650px;"/>
<span class="fragment"> 
<img src="../figs/l06_brexit_lisa.png" alt="LISA Map"
style="width:450px;height:650px;"/>
</center>


#
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
