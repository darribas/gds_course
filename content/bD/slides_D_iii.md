#
## Geographic Data Science

<CENTER>
Choropleths
</CENTER>

<CENTER>
[Dani Arribas-Bel](http://darribas.org)
</CENTER>

#
## Choropleths
## Choropleths

<center>
*Thematic map in which values of a variable are encoded using a color
gradient of some sort*
</center>

* <span class="fragment highlight-current-blue">Counterpart of the histogram</span>
* <span class="fragment highlight-current-blue">**Values** are **classified** into specific **colors**: value --> bin</span>
* <span class="fragment highlight-current-blue">**Information loss** as a trade off for **simplicity**</span>

## Classification choices

* N. of bins
* How to bin?
* Colors

## How many bins?

- <span class="fragment highlight-current-blue">Trade-off: detail Vs cognitive load</span>
- <span class="fragment highlight-current-blue">Exact number depends on purpose of the map</span>
- <span class="fragment highlight-current-blue">Usually not more than 12</span>

## How to bin?

## Unique values

* <span class="fragment highlight-current-blue">Categorical data</span>
* <span class="fragment highlight-current-blue">No gradient (reflect it with the color scheme!!!)</span>
* <span class="fragment highlight-current-blue">Examples: Religion, country of origin...</span>

## {data-background=../figs/l04_unique_values.png data-background-size=contain}

## Equal interval

* <span class="fragment highlight-current-blue">Take the **value** span of the data to represent and split it equally</span>
* <span class="fragment highlight-current-blue">**Splitting** happens based on the **numerical value**</span>
* <span class="fragment highlight-current-blue">Gives more weight to outliers if the distribution is skewed</span>

## {data-background=../figs/l04_equal_interval.png data-background-size=contain}

## Quantiles

* <span class="fragment highlight-current-blue">Regardless of numerical values, split the distribution keeping the same
  amount of values in each bin</span>
* <span class="fragment highlight-current-blue">**Splitting** based on the **rank** of the value</span>
* <span class="fragment highlight-current-blue">If distribution is skewed, it can put very different values in the same bin</span>

## {data-background=../figs/l04_quantiles.png data-background-size=contain}

## Other

* Fisher-Jenks
* Natural breaks
* Outlier maps: box maps, std. maps...

## Color schemes

Align with your purpose

* **Categories**, non-ordered [<img src="../figs/l04_pal_qual.png" alt="Qualitative"
style="width:300px;height:50px;vertical-align:middle;border:0px;" class="fragment"/>](https://jiffyclub.github.io/palettable/wesanderson/#fantasticfox2_5)
* Graduated, **sequential** [<img src="../figs/l04_pal_seq.png" alt="Sequential"
style="width:300px;height:50px;vertical-align:middle;border:0px;" class="fragment"/>](https://jiffyclub.github.io/palettable/colorbrewer/sequential/#rdpu_5)
* Graduated, **divergent** [<img src="../figs/l04_pal_div.png" alt="Divergent"
style="width:300px;height:50px;vertical-align:middle;border:0px;" class="fragment"/>](https://jiffyclub.github.io/palettable/colorbrewer/diverging/#rdylgn_5)

**TIP**: check [ColorBrewer](http://colorbrewer2.org/) for guidance

#
## Tips

- <span class="fragment highlight-current-blue">Think of the purpose of the map</span>
- <span class="fragment highlight-current-blue">Explore by trying different classification alternatives</span>
- <span class="fragment highlight-current-blue">Combine (Geo)visualisation with other statistical devices</span>

#
    
<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">A course on Geographic Data Science</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="http://darribas.org" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.

