module FizzBuzz where

{-

    λ map fizzBuzzFor [5..20]
    ["buzz","fizz","7","8","fizz","buzz","11","fizz","13","14","fizzbuzz","16","17","fizz","19","buzz"]

-}
fizzBuzzFor number 
  | 0 == number `rem` 15 = "fizzbuzz"
  | 0 == number `rem` 5 = "buzz"
  | 0 == number `rem` 3 = "fizz"
  | otherwise = show number
  

naiveFizzBuzz fizzBuzzCount currNum fizzBuzzString = 
    if currNum > fizzBuzzCount
    then fizzBuzzString
    else
        let nextFizzBuzzString = fizzBuzzString <> fizzBuzzFor currNum <> " "
            nextNumber = currNum + 1
        in naiveFizzBuzz fizzBuzzCount nextNumber nextFizzBuzzString
