module Fibs where

fib n 
  | n == 0 = 0
  | n == 1 = 1
  | otherwise = fib (n - 1) + fib (n - 2)

fibs = map fib [0..]

smallFibs = takeWhile (< 100) fibs

{-

fλ fibs
[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946,17711,28657,46368,75025,121393,
196418,317811,514229,832040,^CInterrupted.
λ fibs !! 6
8
λ fibs !! 7
13
ibs2 = 0 : 1 : zipWith (+) fibs2 (tail fibs2)

fibs3 = 0 : 1 : zipWith (+) fibs3 (tail fibs3)

fibs4 = 0 : 1 : zipWith (+) fibs4 (tail fibs4)

-}