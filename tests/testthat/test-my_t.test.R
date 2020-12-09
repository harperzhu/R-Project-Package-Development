#CHANGE THE LIBARY TO MY_GAPMINDER!
# within test-my_t.test
library(gapminder)
test_that("t test works for hypothesis", {
        expect_equal(my_t_test(x = gapminder$lifeExp,alternative = "two sided", mu = 60),list(-1.679548, 1703,0.09322877,"two sided"))
        # expect_equal(f_to_c(212), 100)
})
# test_that("non-numeric input throws error", {
#         expect_error(f_to_c("a string"))
# })
