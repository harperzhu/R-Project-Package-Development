#CHANGE THE LIBARY TO MY_GAPMINDER!#
# # within test-my_lm.R
library(gapminder)
 test_that("my_lm can demonstrate a regression", {
        expect_equal(my_lm(lifeExp ~ gdpPercap + continent, data = my_gapminder),EXPECTED_VALUE)
})
# test_that("non-numeric input throws error", {
#         expect_error(f_to_c("a string"))
# })
