#
## Geographic Data Science

<CENTER>
Space, formally
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## Space, formally

##

For a statistical method to be **explicitly spatial**, it needs to contain
some representation of the geography, or **spatial context**

<span class="fragment">
One of the most common ways is through **Spatial Weights Matrices**

## 

* **(Geo)Visualization**: translating numbers into a (visual) language that the human brain
  *"speaks better"*
* **Spatial Weights Matrices**: translating geography into a (numerical) language that
  a computer *"speaks better"*.

##

Core element in several spatial analysis techniques:

* Spatial autocorrelation
* Spatial clustering / geodemographics
* Spatial regression

#
## $W$ as a formal representation of space

## $W$

<center>
*$N$ x $N$ positive matrix <span class="fragment"> that contains **spatial relations**
<span class="fragment"> between all the observations in the sample*
</center>

<p  class="fragment">
<script type="math/tex; mode=display">
w_{ij} = \left\{ \begin{array}{rl}
x > 0 &\mbox{ if $i$ and $j$ are neighbors} \\
0 &\mbox{ otherwise}
\end{array} \right\}
</script>

$w_{ii} = 0$ by convention
</p>

<span class="fragment">
*...What is a **neighbor**???*


#

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

