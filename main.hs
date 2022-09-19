import Data.Char

main = do
  print (show (ppSucc [1,3,5,7,5]))


ppSucc :: (Integral a) => [a] -> [a]
ppSucc xs = 
   let o = order xs
       maxP = maximum' xs
   in [o, maxP]


maximum' :: Ord a => [a] -> a
maximum' = foldr1 (\x y -> if x >= y then x else y)

order :: (Num a, Num b) => [a] -> b
order = foldr (\x -> (+) 1) 0
