context("strrep")

test_that("strrep", {
  if (!exists("strrep", envir = baseenv()))
    skip("strrep() not found in base")
  f = get("strrep", envir = baseenv())
  expect_same = makeCompareFun(f, strrep)

  expect_same(NULL, 0)
  expect_same(NULL, 1)
  expect_same(NULL, 2)
  expect_same(NULL, 1:2)
  expect_same(character(0), 0)
  expect_same(character(0), 1)
  expect_same(character(0), 2)
  expect_same(character(0), 1:2)
  expect_same("", 0)
  expect_same("", 1)
  expect_same("", 2)
  expect_same("", 1:2)
  expect_same("a", 0)
  expect_same("a", 1)
  expect_same("a", 2)
  expect_same("a", 1:2)
  expect_same(NA, 0)
  expect_same(NA, 1)
  expect_same(NA, 1:2)
  expect_same(NA_character_, 0)
  expect_same(NA_character_, 1)
  expect_same(NA_character_, 2)
  expect_same(NA_character_, 1:2)
  expect_same(letters[1:2], 0)
  expect_same(letters[1:2], 1)
  expect_same(letters[1:2], 2)
  expect_same(letters[2:2], 1:2)
  expect_same(TRUE, 0)
  expect_same(TRUE, 1)
  expect_same(TRUE, 2)
  expect_same(TRUE, 1:2)
  expect_same("a", NA)
  expect_same("a", c(1, NA, 2))
})
