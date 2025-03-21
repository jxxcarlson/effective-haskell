module MyFolds where

import Prelude hiding (foldl, foldr, sum, product)

foldl func acc lst =
  if null lst
  then acc
  else foldl func (func acc (head lst)) (tail lst)

foldr func acc lst =
  if null lst
  then acc
  else func (head lst) (foldr func acc (tail lst))

sum = foldl (+) 0

product = foldl (*) 1

findFirst :: (a -> Bool) -> [a] -> [a] -> [a]
findFirst predicate  acc lst =
  if null lst
  then acc 
  else folder (head lst) $ findFirst predicate acc (tail lst)
  where 
    folder listElement maybeFound
      | predicate listElement = [listElement]
      | otherwise = maybeFound

folderr :: (a -> Bool) -> a -> [a] -> [a]
folderr predicate listElement maybeFound
      | predicate listElement = [listElement]
      | otherwise = maybeFound

ff predicate (x:xs) =
  if predicate x
  then [x]
  else ff predicate xs

