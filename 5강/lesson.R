test_dbino <- dbinom(10, 20, 0.5)
test_dbino

dice <- dbinom(1,3,1/6)
dice

face_one_is_double <- dbinom(2, 3, 1/6) + dbinom(3, 3, 1/6)
face_one_is_double

minus_from_dice <- 1 - pbinom(1, 3, 1/6)

face_one_is_double == minus_from_dice

pbinom(1,3,1/6)

only_one_boy = dbinom(1,3,0.51)
only_one_boy

no_girls = dbinom(0,3,0.49)
no_girls
