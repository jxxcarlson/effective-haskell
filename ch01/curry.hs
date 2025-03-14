
{- v
ghci> f = uncurry_ (+)
ghci> f (2,3)
5

ghci> g = curry_ f
ghci> g 2 3
5
-}
curry_ :: ((a, b) -> t) -> a -> b -> t
curry_ f x y = f (x, y)


uncurry_ :: (t1 -> t2 -> t3) -> (t1, t2) -> t3
uncurry_ f (x, y) = f x y
