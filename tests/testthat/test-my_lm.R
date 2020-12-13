#CHANGE THE LIBARY TO MY_GAPMINDER!#
# # within test-my_lm.R
data(my_gapminder)
 test_that("my_lm returns a numeric Estimate", {
        expect_is(my_lm(lifeExp ~ gdpPercap + continent, data = my_gapminder)$Estimate,"numeric")
})
 test_that("my_lm returns a numeric Estimate", {
         expect_is(my_lm(lifeExp ~ gdpPercap + continent, data = my_gapminder)$Std..Error,"numeric")
 })
 test_that("my_lm returns a numeric t.value", {
         expect_is(my_lm(lifeExp ~ gdpPercap + continent, data = my_gapminder)$t.value,"numeric")
 })

 test_that("my_lm returns a numeric Pr...t..", {
         expect_is(my_lm(lifeExp ~ gdpPercap + continent, data = my_gapminder)$Pr...t..,"numeric")
 })

 test_that("my_lm returns a numeric data frame", {
         expect_is(my_lm(lifeExp ~ gdpPercap + continent, data = my_gapminder),"data.frame")
 })
