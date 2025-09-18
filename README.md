
# lab3pkg

<!-- badges: start -->

[![R-CMD-check](https://github.com/mohzh143/lab3pkg/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mohzh143/lab3pkg/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

`lab3pkg` is an R package created for **Lab 3 at Linköping**
University.  
It contains implementations of classic algorithms and supporting
datasets.

## Features

- `euclidean(a, b)` — Compute the greatest common divisor (GCD) using
  the Euclidean algorithm.  
- `dijkstra(graph, init_node)` — Find shortest paths in a weighted
  graph.  
- `wiki_graph` — Example weighted edge list from Wikipedia’s Dijkstra
  example.

## Installation

You can install the development version of lab3pkg from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("mohzh143/lab3pkg")
```

## Example usage

Here are some basic examples of how to use functions from **lab3pkg**:

``` r
library(lab3pkg)

# Example 1: Euclidean algorithm (GCD)
euclidean(100, 1000)
```

    ## [1] 100

``` r
# Example 2: Dijkstra shortest path
dijkstra(wiki_graph, 1)
```

    ## [1]  0  7  9 20 20 11

## License

This package is released under the **MIT license**.
