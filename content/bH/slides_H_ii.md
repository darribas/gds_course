#
## Geographic Data Science

<CENTER>
Visualisation of Point Patterns
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## Visualization of PPs

Three routes (today):

* *One-to-one* mapping <span class='fragment'> $\leftrightarrow$ "Scatter plot"
* *Aggregate* <span class='fragment'> $\leftrightarrow$ "Histogram"
* *Smooth* <span class='fragment'> $\leftrightarrow$ KDE

#
## One-to-one
## One-to-one
    
- Intuitive 
- Effective in small datasets
- Limited as size increases until useless

## One-to-one
    
<center>
<img src="../figs/l09_liv_pts.png" alt=""
style="width:400px;height:500px;"/>
</center>
   
#
## Aggregation
##

<center>
*Points meet polygons*
</center>

<span class="fragment"> Use **polygon** boundaries and **count** points per area

<span class="fragment"> [Insert your skills for **choropleth mapping** here!!!]

<span class="fragment"> **But**, <span class="fragment"> the polygons need to *"make sense"* (their
delineation needs to relate to the point generating process)

## 

<center>
<img src="../figs/l09_liv_pts.png" alt=""
style="width:400px;height:500px;"/>
<span class="fragment"> 
<img src="../figs/l09_liv_cho.png" alt=""
style="width:400px;height:500px;"/>
</center>

## Hex-binning

If **no** polygon boundary seems like a **good candidate** for aggregation...

<span class='fragment'> ...draw a **hexagonal** (or squared) **tesselation**!!!

<div class='fragment'>
Hexagons...

* Are **regular**
* **Exhaust** the space (Unlike circles)
* Have **many sides** (minimize boundary problems)
</div>

## 

<center>
<img src="../figs/l09_liv_pts.png" alt=""
style="width:300px;height:400px;"/>
<span class="fragment"> 
<img src="../figs/l09_liv_hex_empty.png" alt=""
style="width:300px;height:400px;"/>
<span class="fragment"> 
<img src="../figs/l09_liv_hex_filled.png" alt=""
style="width:300px;height:400px;"/>
</center>


## But...

<div class="fragment">
(Arbitrary) aggregation may induce **MAUP** (see Block D)
</div>

<center class="fragment">
$+$
</center>

<div class="fragment">
Points usually represent events that affect only **part** of the population
and hence are best considered as **rates**
</div>

#
## Kernel Density Estimation
## Kernel Density Estimation

*Estimate the (**continuous**) observed **distribution** of a variable*

<div class='fragment'>
* Probability of finding an observation at a given point
* "Continuous histogram"
* Solves (much of) the MAUP problem, but not the underlying population issue
</div>

## {data-background=../figs/l09_kde.png data-background-size=contain}

[[Source](https://en.wikipedia.org/wiki/Kernel_density_estimation#/media/File:Comparison_of_1D_histogram_and_KDE.png)]

## Bivariate (spatial) KDE

*Probability of finding observations at a given point in space*

* **Bivariate** version: distribution of **pairs of values**
* In **space**: values are coordinates (XY), locations
* Continuous "version" of a choropleth

## {data-background=../figs/l09_kde2d.png}

## 

<center>
<img src="../figs/l09_liv_pts.png" alt=""
style="width:400px;height:500px;"/>
<span class="fragment"> 
<img src="../figs/l09_liv_kde.png" alt=""
style="width:400px;height:500px;"/>
</center>

#

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

