context("test functions in sparkR.R")

test_that("repeatedly starting and stopping SparkR", {
  for (i in 1:4) {
    sc <- sparkR.init()
    rdd <- parallelize(sc, 1:20, 2L)
    expect_equal(count(rdd), 20)
    sparkR.stop()
  }
})
