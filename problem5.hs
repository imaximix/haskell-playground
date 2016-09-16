
-- Smallest multiple
find (\x -> (foldl (+) 0 $ map (\y -> mod x y) [1..20]) == 0) [20,40..]
