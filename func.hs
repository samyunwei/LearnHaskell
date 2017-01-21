--------------------------------------------------------------------------------------
-- File Name: func.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Sat 21 Jan 2017 11:50:46 AM CST
----------------------------------------------------------------------------
lucky :: Int -> String
lucky 7 = "LUCKY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck,pall!'"


sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three"
sayMe 4 = "Four!"
sayMe 5 = "Five"
sayMe x = "Not between 1 and 5"

facorial' :: Int -> Int
facorial' 0 = 1
facorial' n = n * facorial'(n -1)


charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"


addVectors :: (Double,Double) -> (Double,Double) -> (Double,Double)
addVectors (x1,y1) (x2,y2) = (x1+x2,y1 + y2)

first :: (a,b,c) -> a
first (x,_,_) = x

second :: (a,b,c) -> b
second (_,y,_) = y

third :: (a,b,c) -> c
third (_,_,z) = z

xs = [(1,3),(4,3),(2,4),(5,3),(5,6),(3,1)]

head' :: [a] -> a
head' [] = error "Can't call head on an empty list,dummy "
head' (x:_) = x


tell :: (Show a) => [a] -> String
tell [] = "The list is empty"
tell (x:[]) = "The list has one element: " ++ show x
tell (x:y:[]) = "The list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "The list is long. The first two element are: " ++ show x ++ " and " ++ show y

badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z


firstletter :: String -> String
firstletter "" = "Empyt string ,whoops!"
firstletter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]



bmiTell :: Double ->Double -> String
bmiTell weight height
    | weight / height ^ 2 <= 18.5 = "You're underweight,you emo,you! "
    | weight / height ^ 2<= 25.0 = "You're supposedly normal.Pffft,I bet you're ugly"
    | weight / height ^ 2 <= 30.0 = "You're fat !Lost some weight,fatty!"
    | otherwise = "You're a whale,congratulations!'"


max' :: (Ord a) => a-> a -> a
max' a b
    | a < b = b
    | otherwise = a

myCompare :: (Ord a) => a-> a-> Ordering
a `myCompare` b
    | a == b = EQ
    | a <= b =  LT
    | otherwise = GT


bmiTell' :: Double ->Double -> String
bmiTell' weight height
    | bmi <= skinny = "You're underweight,you emo,you! "
    | bmi <= normal = "You're supposedly normal.Pffft,I bet you're ugly"
    | bmi <= fat = "You're fat !Lost some weight,fatty!"
    | otherwise = "You're a whale,congratulations!'"
    where   bmi = weight / height ^ 2
            skinny = 18.5
            normal = 25.0
            fat = 30.0

badGreeting :: String            
badGreeting = "Oh! Pfft.It's you.'" 

niceGreeting :: String            
niceGreeting = "Hello! So very nice to see you,"

greet :: String -> String
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet name = badGreeting ++ " "  ++ name

initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
    where   (f:_) = firstname
            (l:_) = lastname



calcBmis :: [(Double,Double)] -> [Double]
calcBmis xs  = [bmi w h | (w,h) <- xs]
    where   bmi weight height = weight / height ^ 2

