context("TESS3 project")



test_that("tess3project constructor", {

  data("data.for.test", package = "TESS3enchoSen")
  tess3project.res <- tess3project(genotype = data.for.test$X,
                     geographic.coordinate = data.for.test$coord,
                     K = 2:3,
                     ploidy = 1,
                     lambda = 1.0,
                     method = "MCPA",
                     rep = 2,
                     keep = "all")

  expect_equal(class(tess3project.res),"tess3project")
  expect_equal(length(tess3project.res),2)
  expect_equal(length(tess3project.res[[2]]$tess3.run),2)

  summary(tess3project.res)

  tess3project.res <- tess3project(genotype = data.for.test$X,
                                   geographic.coordinate = data.for.test$coord,
                                   K = 2,
                                   ploidy = 1,
                                   lambda = 1.0,
                                   method = "MCPA",
                                   rep = 2,
                                   keep = "all")
  expect_equal(length(tess3project.res[[1]]$tess3.run),1)


  summary(tess3project.res)

  # singulare cases
  tess3project.res <- tess3project(genotype = data.for.test$X,
                                   geographic.coordinate = data.for.test$coord,
                                   K = NULL,
                                   ploidy = 1,
                                   lambda = 1.0,
                                   method = "MCPA",
                                   rep = 2,
                                   keep = "best")
  summary(tess3project.res)
  expect_error(tess3project.res <- tess3project(genotype = data.for.test$X,
                                   geographic.coordinate = data.for.test$coord,
                                   K = NULL,
                                   ploidy = 1,
                                   lambda = 1.0,
                                   method = "MCPA",
                                   rep = -1,
                                   keep = "best"), "rep must greater than 1")


})


test_that("tess3project plot", {

  data("data.for.test", package = "TESS3enchoSen")
  tess3project.res <- tess3project(genotype = data.for.test$X,
                                   geographic.coordinate = data.for.test$coord,
                                   K = 1:2,
                                   ploidy = 1,
                                   lambda = 1.0,
                                   method = "MCPA",
                                   rep = 3,
                                   keep = "all")
  plot(tess3project.res)

})