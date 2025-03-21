module Lib where

  (|>) :: a -> (a -> b) -> b
  (|>) x f = f x

  inc x = x + 1

  double x = x * 2

  
