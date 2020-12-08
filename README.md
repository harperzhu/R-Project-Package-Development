  <!-- badges: start -->
  [![Travis build status](https://travis-ci.com/harperzhu/projectpackage.svg?branch=master)](https://travis-ci.com/harperzhu/projectpackage)
  [![Codecov test coverage](https://codecov.io/gh/harperzhu/projectpackage/branch/master/graph/badge.svg)](https://codecov.io/gh/harperzhu/projectpackage?branch=master)
  <!-- badges: end -->
This is an example to change my README

``` r
##use
The vignette demonstrates example usage of all main functions. 
Please file an issue if you have a request for a tutorial that is not currently included. 
You can see the vignette by using the following code (note that this requires a TeX installation to view properly):

# install.packages("devtools")
devtools::install_github("harperzhu/projectpackage", build_vignette = TRUE, build_opts = c())
library(projectpackage)
# Use this to view the vignette in the projectpackage HTML help
help(package = "projectpackage", help_type = "html")
# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "projectpackage")
```

```{r}
To download the corncob package, use the code below.

# install.packages("devtools")
devtools::install_github("harperzhu/projectpackage")
library(projectpackage)
```

```{r}
projectpackage is an R package for cross validation classification, t- test and testing hypotheses.
```
