#
## Geographic Data Science

<CENTER>
The spatial lag
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
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

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

