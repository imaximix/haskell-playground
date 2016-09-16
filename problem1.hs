isMultiple x y = mod y x == 0
isMultipleOf3or5 x = or [isMultiple 3 x, isMultiple 5 x]

-- Problem 1: find sum of multiples of 3 or 5 below 1000
main = print $ sum $ filter isMultipleOf3or5 [1..999]

