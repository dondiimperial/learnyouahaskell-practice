applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

zipWith' _ [] _ = []  
zipWith' _ _ [] = []  
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys

lDiv :: (Integral a) => [a]
lDiv = filter p [100000,99999..0]
     where p x = mod x 3829 == 0

