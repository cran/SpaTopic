## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----warning=FALSE,message=FALSE----------------------------------------------
library(SpaTopic)
packageVersion("SpaTopic")
library(sf)
## The input can be a data frame or a list of data frames
data("lung5")
head(lung5)

## ----warning=FALSE,message=FALSE----------------------------------------------
## Gibbs sampling
gibbs.res<-SpaTopic_inference(lung5, ntopics = 7, sigma = 50, region_radius = 400)

## -----------------------------------------------------------------------------
print(gibbs.res)

