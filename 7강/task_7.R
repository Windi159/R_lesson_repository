data <- as.data.frame(state.x77)
life_exp <- data$"Life Exp"
test <- t.test(life_exp, mu=71)
boxplot(life_exp)
shapiro.test(life_exp)
qqnorm(life_exp)
qqline(life_exp)

ci <- c(mean(life_exp) - (qt(0.975, df=49) * (sd(life_exp) /sqrt(50))),
        mean(life_exp) + (qt(0.975, df=49) * (sd(life_exp) /sqrt(50))))
ci
