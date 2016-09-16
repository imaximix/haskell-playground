fib :: Int -> Integer
fib 0 = 1
fib 1 = 1
fib x = fib (x - 1) + fib (x - 2)

-- By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.
-- Also, this is terribly inneficient
main = print $ sum $ takeWhile (<4000000) $ filter even $ map fib [0,1..]
