module Primes where


{-
    λ factors 234
    [2,3,3,13]

-}
factors num = 
    factors' num 2
    where 
        factors' num fact
          | num == 1 = []
          | (num `rem` fact == 0) = fact : factors' (num `div` fact) fact
          | otherwise = factors' num (fact + 1)




