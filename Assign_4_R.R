#Q1

x <- c(0, 1, 2, 3, 4)
p_x <- c(0.41, 0.37, 0.16, 0.05, 0.01)

expected_value <- sum(x * p_x)
expected_value

expected_value <- weighted.mean(x, p_x)
expected_value

c(x%*%p_x)
