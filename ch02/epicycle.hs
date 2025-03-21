epiCycle inputList =
  cycleHelper inputList 
  where
    cycleHelper [] = []
    cycleHelper (x:xs) = x : cycleHelper xs



