isBalanced s = 
    0 == isBalanced' 0 s
    where
        isBalanced' count s
           | null s = count
           | head s == '(' = isBalanced' (count + 1) (tail s)
           | head s == ')' = isBalanced' (count - 1) (tail s)
           | otherwise = isBalanced' count (tail s)
        