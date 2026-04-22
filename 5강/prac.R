curve(dnorm(x,0,1), from=-3, to=20, lty=1, ylab="f(x)")
curve(dchisq(x,1), from=-3, to=20, add=T, lty=1, col="red")
curve(dchisq(x,2), from=-3, to=20, add=T, lty=1, col="blue")
curve(dchisq(x,3), from=-3, to=20, add=T, lty=1, col="orange")
curve(dchisq(x,4), from=-3, to=20, add=T, lty=1, col="purple")
curve(dchisq(x,5), from=-3, to=20, add=T, lty=1, col="green")

graphics.off()

curve(dnorm(x,0,1), from=-3, to=20, lty=1, col="yellow", ylab="f(x)")
#자유도가 1일때
curve(dt(x,1), add=T, col="red")
#표준정규분포와 비교했을때, t(1)이 덜 튀어나와있음. 더 완만하다고 해야하나

#자유도가 5일때
curve(dt(x,5), add=T, col="blue")
#표준정규분포와 비교했을때, t(1)에 비해 표준정규분포에 더 가까운 모습을 보여줌

#자유도가 30일때
curve(dt(x,30), add=T, col="purple")
#표준정규분포와 거의 비슷한 모습을 보여줌
#이를 통하여 자유도가 커질수록 표준정규분포에 가까워지는 모습을 볼 수 잇음

graphics.off()

curve(df(x,1,1), from=0, to=5, lty=1, ylab="f(x)", col = "red")
curve(df(x,3,2), add=T, col="blue")
curve(df(x,5,3), add=T, col="purple")
curve(df(x,30,40), add=T, col="green")

graphics.off()

curve(dnorm(x,0,1/sqrt(30)), from=-4, to=4, ylab="dnorm(x)")
curve(dnorm(x,0,1/sqrt(2)), add=T, col="red")
curve(dnorm(x,0,1/sqrt(10)), add=T, col="blue")
curve(dnorm(x,0,1/sqrt(20)), add=T, col="purple")
curve(dnorm(x,0,1), add=T, col="green")

      