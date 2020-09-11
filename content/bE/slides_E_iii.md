#
## Geographic Data Science

<CENTER>
Space, formally
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## Today

* The need to represent space formally
* Spatial weights matrices
    * What
    * Why
    * Types
* The spatial lag
* The Moran Plot

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

## Types of $W$

A neighbor is "somebody" who is:

* Next door <span class="fragment"> $\rightarrow$ **Contiguity**-based $W$s
* Close <span class="fragment"> $\rightarrow$ **Distance**-based $W$s
* In the same "place" as us <span class="fragment"> $\rightarrow$
  **Block** weights
* ...

<span class='fragment'>
See [Anselin & Rey (2014)](http://www.amazon.com/Modern-Spatial-Econometrics-Practice-GeoDaSpace/dp/0986342106/ref=sr_1_1?ie=UTF8&qid=1421531753&sr=8-1&keywords=anselin+spatial+econometrics) for an in-detail discussion and more types of $W$.
</span>

## Contiguity-based weights

**Sharing boundaries** to any extent

* Rook
* Queen
* ...

## {data-background=../content/lectures/figs/l05_queen.png}

## Distance-based weights

Weight is (inversely) proportional to distance between observations

* Inverse distance (threshold)
* KNN (fixed number of neighbors)
* ...

## {data-background=../content/lectures/figs/l05_dist.png}

##

<center>
<img src="../content/lectures/figs/l05_queen.png" alt=""
style="width:400px;height:400px;"/>
<img src="../content/lectures/figs/l05_dist.png" alt=""
style="width:400px;height:400px;"/>
</center>

## Block weights

Weights are assigned based on discretionary rules loosely related to geography

For example:

* LSOAs into MSOAs
* Post-codes within city boundaries
* Counties within states
* ...

## {data-background=../content/lectures/figs/l05_block.png}

## *How much of a neighbor?*

No neighbors receive zero weight: $w_{ij} = 0$

Neighbors, it depends, $w_{ij}$ can be:

* One $w_{ij} = 1$ $\rightarrow$ <span class='hlg'>Binary</span>
* Some proportion ($0 < w_{ij} < 1$, <span class='hlg'>continuous</span>) which can be a function of:

    * Distance
    * Strength of interaction (e.g. commuting flows, trade, etc.)
    * ...

## Choice of $W$

Should be based on and reflect the **underlying channels of interaction** for
the question at hand.

Examples:

* Processes propagated by inmediate contact (e.g. disease contagion) $\rightarrow$
Contiguity weights
* Accessibility $\rightarrow$ Distance weights
* Effects of county differences in laws $\rightarrow$ Block weights

## Do your own (contiguity) weights time!
##

<center>
<img src="../content/lectures/figs/l05_geo.png" alt=""
style="width:400px;height:500px;"/>
<span class="fragment"> 
<img src="../content/lectures/figs/l05_geo_w.png" alt=""
style="width:400px;height:500px;"/>
</center>

## Standardization

In some applications (e.g. spatial autocorrelation) it is common to
*standardize* $W$

The most widely used standardization is **row-based**: divide every element by the sum of
the row:

<p>
<script type="math/tex; mode=display">
\bar{w_{ij}} = \dfrac{w_{ij}}{w_{i\cdotp}}
</script>
</p>

where $w_{i\cdotp}$ is the sum of a row.

#
## The spatial lag
## The spatial lag

Product of a spatial weights matrix $W$ and a given variably $Y$

<p class="fragment">
$$Y_{sl} = WY%_$$
$$y_{sl-i} = \displaystyle \sum_j w_{ij} y_j$$
</p>

##

-   Measure that captures the behaviour of a variable in the neighborhood of a given observation $i$.
-   If $W$ is **standardized**, the spatial lag is the *average value of the
    variable in the neighborhood*

##

-   Common way to introduce space formally in a statistical framework
-   Heavily used in both ESDA and spatial regression to delineate neighborhoods. Examples:

    - Moran's I
    - LISAs
    - Spatial models (lag, error...)

#
## Recapitulation

* Spatial Weights matrices: matrix encapsulation of space
* Different types for different cases
* Useful in many contexts, like the spatial lag and Moran plot, but also many
  other things!

#

    <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

