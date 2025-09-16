test_that("euclidean works on typical cases", {
  expect_equal(euclidean(100, 1000), 100L)
  expect_equal(euclidean(123612, 13892347912), 4L)
  expect_equal(euclidean(0, 5), 5L)
  expect_equal(euclidean(7, 0), 7L)
  expect_equal(euclidean(-27, 9), 9L)
})
