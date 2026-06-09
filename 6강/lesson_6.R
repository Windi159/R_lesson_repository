x <- rnorm(30 * 100, 0, 1)
x <- matrix(x, 100, 30)

x.bar <- apply(x, 1, mean)

low <- x.bar - 1.96 * 1 / sqrt(30)
high <- x.bar + 1/96 * 1 / sqrt(30)
ci <- data.frame(low, high)

ci

ci$x0 <- 1:100
ci$x1 <- 1:100
ci$y0 <- ci$low
ci$y1 <- ci$high

plot(ci$x0, x.bar, xlim=c(0,101), ylim=c(-1, 1), xlab="표본", ylab="신뢰구간")

segments(ci$x0,ci$y0, ci$x1,ci$y1)


abline(h=0)

which(high < 0)
which(low < 0)
