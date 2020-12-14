test_that("my_rf_cv returns a numeric Estimate", {
        expect_is(my_rf_cv(k = 5),"numeric")
        expect_is(my_rf_cv(k = 3),"numeric")
})
