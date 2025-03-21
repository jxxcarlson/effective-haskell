module MyZip where

zipHelper :: ([a], [b]) -> [(a, b)]
zipHelper ([], []) = []
zipHelper (x:xs, y:ys) = (x, y) : zipHelper (xs, ys)

zipHelper (x:xs, []) = []
zipHelper ([], y:ys) = []

zip' :: [a] -> [b] -> [(a, b)]
zip' ps qs = zipHelper (ps, qs)

zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' f _ [] = []
zipWith' f [] _ = []
zipWith' f (a:as) (b:bs) = f a b : zipWith' f as bs
