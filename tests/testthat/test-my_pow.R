test_that("multiplication works", {
  expect_equal(2 * 2, 4)
})

# within test-my_pow.R
test_that("my_pow works mathmatically", {
        expect_equal(my_pow(1), 1)
        expect_equal(my_pow(2), 4)
        expect_equal(my_pow(2, power = 3), 8)
        expect_equal(my_pow(3, power = 3), 27)
        expect_equal(my_pow(4, power = 5), 1024)
        expect_equal(my_pow(5, power = 3), 125)
})
test_that("non-numeric input throws error", {
        expect_error(my_pow("a string"))
        expect_error(my_pow(2, power = "a string"))
        expect_error(my_pow(2, power = "5"))
        expect_error(my_pow(2, power = "banana"))
        expect_error(my_pow(2, power = "apple"))
})
