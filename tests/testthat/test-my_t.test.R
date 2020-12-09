#CHANGE THE LIBARY TO MY_GAPMINDER!
# within test-my_t.test
test_that("t test works for hypothesis", {
        expect_equal(my_t_test(x = my_gapminder$lifeExp,alternative = "two sided", mu = 60),list(-1.679548, 1703,0.09322877,"two sided"))
        expect_equal(my_t_test(x = my_gapminder$lifeExp,alternative = "less", mu = 60),list(-1.679548, 1703,0.9533856,"less"))
        expect_equal(my_t_test(x = my_gapminder$lifeExp,alternative = "greater", mu = 60),list(-1.679548, 1703,0.04661438,"greater"))
})
# test_that("non-numeric input throws error", {
#         expect_error(f_to_c("a string"))
# })


