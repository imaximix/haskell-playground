isDividable x y = mod x y == 0

findDivisor x divisor
      | divisor^2 > x                   = x
      | (isDividable x divisor) == True = divisor
      | otherwise                       = findDivisor x (divisor + 1)

isPrime x = findDivisor x 2 == x

let primes = filter isPrime [1,2..]

primeFactors x =
  find (\xs -> product xs == x) $
  scanl (\memo x -> memo ++ [x]) [] $
  filter (isDividable x) primes
