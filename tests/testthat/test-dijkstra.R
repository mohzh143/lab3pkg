test_that("dijkstra returns correct distances for wiki_graph", {
  expect_equal(dijkstra(wiki_graph, 1), c(0,7,9,20,20,11))
  expect_equal(dijkstra(wiki_graph, 3), c(9,10,0,11,11,2))
})

test_that("dijkstra input validation", {
  g <- data.frame(v1=c(1,2), v2=c(2,3), w=c(1,2))
  expect_error(dijkstra(g, 99), "must exist", fixed = FALSE)
  g2 <- data.frame(v1=c(1), v2=c(2), w=c(-1))
  expect_error(dijkstra(g2, 1), "w >= 0", fixed = FALSE)
})
