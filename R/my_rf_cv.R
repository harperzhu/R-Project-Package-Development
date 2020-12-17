#' Random Forest Cross-Validation
#'
#' This function predict output using Random Forest Cross-Validation algorithms.
#'
#' @param k number of folds
#'
#' @import randomForest dplyr
#'
#' @keywords prediction
#'
#' @return a numeric with the cross-validation error
#'
#' @examples
#'my_rf_cv(k = 2)
#'my_rf_cv(k = 3)
#'my_rf_cv(k = 4)
#'my_rf_cv(k = 5)
#'my_rf_cv(k = 6)
#'
#' @export
my_rf_cv <- function(k) {
        my_penguins <- tidyr::drop_na(my_penguins)
        #Split data in k parts, randomly
        split <- sample(rep(1:k, length = nrow(my_penguins)), replace = TRUE)
        #set up a new column in penguins as "split"
        my_penguins$split <- split
        x <- my_penguins %>% dplyr::select(body_mass_g, bill_length_mm, bill_depth_mm, flipper_length_mm)
        #Empty matrix to store predictions
        prediction_result <- rep(NA, nrow(x))
        for (i in 1:k){
                data_train <- x %>% dplyr::filter(split != i)
                data_test <- x %>% dplyr::filter(split == i)
                #Train our model and record predictions and errors
                forest_model <- randomForest(body_mass_g ~ bill_length_mm + bill_depth_mm + flipper_length_mm, data = data_train, ntree = 100)
                prediction_result[split == i] <- predict(forest_model, data_test[, -1])
        }
        mse <- mean((prediction_result - x$body_mass_g)^2)
        return(list("MSE" = mse))
}
