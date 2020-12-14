test_that("my_knn_cv returns a numeric Estimate", {
        expect_is(my_knn_cv(train = penguins, cl = penguins$species, k_nn = 1, k_cv = 5 ),"list")
        expect_is(my_knn_cv(train = penguins, cl = penguins$species, k_nn = 5, k_cv = 5 ),"list")
})
