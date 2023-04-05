  <!-- badges: start -->
  [![Travis build status](https://travis-ci.com/harperzhu/projectpackage.svg?branch=master)](https://travis-ci.com/harperzhu/projectpackage)
  [![Codecov test coverage](https://codecov.io/gh/harperzhu/projectpackage/branch/master/graph/badge.svg)](https://codecov.io/gh/harperzhu/projectpackage?branch=master)
  <!-- badges: end -->
  
  
  ## Projectpackage ##

Introduction: This is a R package that utilized cross-validation algorithm and hypothesis testing mechanism to produce prediction and inference. It includes four functions: my_t.test, my_lm, my_knn_cv, my_rf_cv. In regards to installation instruction, please see the installation section below. The documentation of each function can be accessed through ?function_name(). If you have any question, feel free to reach out to us: harperzhu@yahoo.com , sz94@uw.edu
```{r eval=FALSE, force = TRUE}

## use ##

The vignette demonstrates example usage of all main functions. 
Please file an issue if you have a request for a tutorial that is not currently included. 
You can see the vignette by using the following code (note that this requires a TeX installation to view properly):
``` r


```

## Installation ##

To download the projectpackage package, use the code below.
```{r}
install.packages("devtools")
devtools::install_github("harperzhu/projectpackage", build_vignette = TRUE, build_opts = c())
library(projectpackage)
```


## Exeample Usage ##

```{r}
# Use this to view the vignette in the projectpackage HTML help
help(package = "projectpackage", help_type = "html")


# Use this to view the vignette as an isolated HTML file
utils::browseVignettes(package = "projectpackage")

```
