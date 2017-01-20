--------------------------------------------------------------------------------------
-- File Name: type.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Sat 21 Jan 2017 12:21:12 AM CST
----------------------------------------------------------------------------
removeNonUppercase :: [Char] -> [Char]
removeNonUppercase st = [c | c <-st, c  `elem` ['A' .. 'Z']]

addThree :: Int -> Int -> Int -> Int
addThree x y z = x + y + z

factorial :: Integer -> Integer
factorial n = product [1 .. n]

circumference :: Float -> Float
circumference r =  2 * pi * r

circumference' :: Double -> Double
circumference' r = 2 * pi * r

