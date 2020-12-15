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
#'my_penguins <- tidyr::drop_na(my_penguins)
#'my_result_1 <- my_knn_cv(train = my_penguins, cl = my_penguins$species, k_nn = 1, k_cv = 5 )
#'my_result_2 <- my_knn_cv(train = my_penguins, cl = my_penguins$species, k_nn = 5, k_cv = 5 )
#'train_err_1 <- sum(as.numeric(my_penguins$species != my_result_1$class)) / nrow(my_penguins)
#'train_err_2 <- sum(as.numeric(my_penguins$species != my_result_2$class)) / nrow(my_penguins)
#'my_table_row_1 <- cbind("k_nn = 1" = my_result_1$cv_err, "k_nn = 5" = my_result_2$cv_err)
#'my_table_row_2 <- cbind("k_nn = 1" = train_err_1, "k_nn = 5" = train_err_2)
#'my_table <- rbind(my_table_row_1, my_table_row_2)
#'rownames(my_table) <- c("cv_err", "training_err")
#'my_table
#'
#' @export
my_rf_cv <- function(k) {
        #Split data in k parts, randomly
        split <- sample(rep(1:k, length = nrow(my_penguins)), replace = TRUE)
        #set up a new column in penguins as "split"
        my_penguins$split <- split
        x <- my_penguins %>% dplyr::select(body_mass_g, bill_length_mm, bill_depth_mm, flipper_length_mm)
        #Empty matrix to store predictions
        prediction_result <- rep(NA, nrow(x))
        body_mass_g <- na.omit(my_penguins$body_mass_g)
        bill_length_mm <- na.omit(my_penguins$bill_length_mm)
        bill_depth_mm <- na.omit(my_penguins$bill_depth_mm)
        flipper_length_mm <- na.omit(my_penguins$flipper_length_mm)
        for (i in 1:k){
                data_train <- x %>% filter(split != i)%>%na.omit()
                data_test <- x %>% filter(split == i)
                #Train our model and record predictions and errors
                forest_model <- randomForest(as.formula(body_mass_g ~ bill_length_mm + bill_depth_mm + flipper_length_mm), data = data_train, ntree = 100)
                prediction_result[split == i] <- predict(forest_model, data_test[, -1])
        }
        sum <- 0
        body_mass_g <- x$body_mass_g
        for (i in 1 : nrow(x)) {
                sum <- sum + (prediction_result[i] - body_mass_g[i])^2
        }
        mse <- sum / length(x$body_mass_g)
        return(list("MSE" = mse))
}
