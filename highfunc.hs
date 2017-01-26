--------------------------------------------------------------------------------------
-- File Name: highfunc.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: 三  1/25 16:37:01 2017
----------------------------------------------------------------------------
multThree :: Int -> Int -> Int -> Int
multThree x y z = x * y * z
multTwoWithNine = multThree 9
compareWithHundred:: Int -> Ordering
compareWithHundred = compare 100
divideByTen :: (Floating a) => a -> a
divideByTen = (/10)
isUpperAlphanum :: Char -> Bool
isUpperAlphanum = (`elem` ['A' .. 'Z'])
applyTwice :: (a->a) ->a ->a 
applyTwice f x = f (f x)
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ []_ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
flip' :: (a -> b -> c) -> b -> a -> c
flip' f x y = f y x
quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
    let smallerOrEqual = filter (<=x) xs
        larger = filter (> x) xs
        in quicksort smallerOrEqual ++ [x] ++ quicksort larger

largestDivisible :: Integer
largestDivisible = head(filter p [100000,99999..])
    where p x = x `mod` 3829 == 0
 
chain :: Integer -> [Integer]
chain 1 = [1]
chain n 
    | even n = n:chain (n `div` 2)
    | odd n = n:chain(n*3 + 1)


numLongChains :: Int
--numLongChains = length(filter isLong (map chain[1..100]))
  --  where isLong xs = length xs > 15
--numLongChains :: Int
numLongChains = length (filter (\xs -> length xs > 15 ) (map chain [1..100]))


addThree' :: Int -> Int -> Int -> Int
addThree' = \x -> \y -> \z -> x+y+z

flip'' :: (a -> b -> c) ->b ->a -> c
flip'' f = \x y -> f y x

sum' :: (Num a) => [a] -> a
--sum' xs = foldl (\acc x -> acc + x) 0 xs
sum' = foldl (+) 0

map' :: (a -> b) -> [a] -> [b]
--map' f xs = foldr(\x acc -> f x : acc) [] xs
map' f xs = foldl(\acc x -> acc ++ [f x]) [] xs

elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldr (\x acc -> if x == y then True else acc ) False ys


maximum' :: (Ord a) => [a] -> a
maximum' = foldl1 max


reverse' :: [a] -> [a]
--reverse' = foldl (\acc x -> x :acc) []
reverse' = foldl (flip (:) ) []

product' :: (Num a) => [a] -> a
product' = foldl (*) 1

filter' :: (a -> Bool) -> [a] -> [a]
filter' p = foldr(\x acc -> if p x then x : acc else acc) []

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

and' :: [Bool] -> Bool
and' xs = foldr (&&) True xs

sqrtSums :: Int
sqrtSums = length (takeWhile (<1000) (scanl1 (+) (map sqrt [1..]))) + 1

fn = ceiling . negate . tan .cos . max 50


oddSquareSum :: Integer
oddSquareSum = sum . takeWhile(<10000) . filter odd $ map (^2) [1..]


