context("ho.R")

test_that("Inbreeding",{
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
  loci <- c(AA,AB,AC,AD,BB,BC,BD,CC,CD,DD)

  h <- Ho(loci)
  
  expect_that( h, is_equivalent_to(0.6) )
  

   
})