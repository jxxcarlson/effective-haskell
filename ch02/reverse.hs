-- foldl :: Foldable t => (b -> a -> b) -> b -> t a -> b
-- foldr :: Foldable t => (a -> b -> b) -> b -> t a -> b

reverse' :: [a] -> [a]
reverse' list =
  foldl (\list_ item -> item:list_) [] list

reverse'' :: [a] -> [a]
reverse'' list = 
  foldr (\item list_    -> list_ ++ [item]) [] list