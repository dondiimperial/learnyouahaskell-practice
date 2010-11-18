qsort :: (Ord a) => [a] -> [a]
qsort [] = []
qsort (x:xs) =
      let sSorted = qsort [a | a <- xs, a <= x]
          bSorted = qsort [a | a <- xs, a > x]

      in sSorted ++ [x] ++ bSorted      