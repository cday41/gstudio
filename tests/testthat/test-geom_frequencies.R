context("geom_frequencies.R")

test_that("shortest paths", {

  AA <- locus( c("A","A") )
  AB <- locus( c("A","B") )
  BB <- locus( c("B","B") )
  AC <- locus( c("A","C") )
  AD <- locus( c("A","D") )
  BC <- locus( c("B","C") )
  BD <- locus( c("B","D") )
  CC <- locus( c("C","C") )
  CD <- locus( c("C","D") )
  DD <- locus( c("D","D") )
  TPI <- c(AA,AB,AC,AD,BB,BC,BD,CC,CD,DD)
  
  df <- data.frame( Population = c(rep("A",5),rep("B",5)), TPI  )
  x <- frequencies( df, loci="TPI", stratum="Population" )
  p <- geom_frequencies( x ) 
  expect_that( p, is_a("ggproto"))
  expect_that( p, is_a("LayerInstance"))
  expect_that( p, is_a("Layer"))
})