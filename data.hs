--------------------------------------------------------------------------------------
-- File Name: data.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Thu 02 Mar 2017 12:35:54 AM CST
----------------------------------------------------------------------------
--data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
--area :: Shape -> Float
--area (Circle _ _ r) = pi * r ^ 2
--area (Rectangle x1 y1 x2 y2) = (abs $ x2 -x1) * (abs $ y2 -y1)
--data Point = Point Float Float deriving (Show)
--data Shape = Circle Point Float | Rectangle Point Point deriving (Show)
--area:: Shape -> Float
--area (Circle _ r) = pi * r ^ 2
--area (Rectangle (Point x1 y1) (Point x2 y2)) = (abs $ x2 -x1) * (abs $ y2 - y1)
--
--nudge:: Shape -> Float -> Float ->Shape
--nudge (Circle (Point x y) r) a b =  Circle(Point (x + a) (y + b)) r
--nudge (Rectangle (Point x1 y1) (Point x2 y2)) a b = Rectangle (Point (x1 + a) (y1 + b)) (Point (x2 + a) (y2 + b) )
--
--baseCircle :: Float -> Shape
--baseCircle r = Circle (Point 0 0) r
--
--baseRect :: Float -> Float -> Shape
--baseRect width height = Rectangle (Point 0 0 ) (Point width height)
--import Shapes

--data Person = Person String String Int Float String String deriving (Show)
--firstName :: Person -> String
--firstName (Person firstname _ _ _ _ _) = firstname
--
--lastName :: Person ->String
--lastName (Person _ lastname _ _ _ _) = lastname
--
--age :: Person -> Int
--age (Person _ _ age  _ _ _) = age
--
--height :: Person -> Float
--height (Person _ _ _ height _ _) = height
--
--phoneNumber :: Person -> String
--phoneNumber (Person _ _ _ _ number _) = number
--
--flavor :: Person -> String
--flavor (Person _ _ _ _ _ flavor) = flavor

--import Shapes
--data Person = Person {firstName :: String
--                     ,lastName :: String
--                     ,age :: Int
--                     ,height :: Float
--                     ,phoneNumber :: String
--                     ,flavor :: String } deriving (Show)
--

--data Car = Car String String Int deriving (Show)
--data Car = Car{
--    company :: String
--    ,model :: String
--    ,year :: Int
--} deriving (Show)
--
--
----data Maybe a = Nothing | Just a
--data IntMaybe = INothing | IJust Int
--data StringMaybe = SNothing | SJust String
--data ShapeMaybe = ShNothib | ShJust Shape

--data Car a b c = Car {company :: a
--                    ,model :: b
--                    ,year :: c
--                    } deriving (Show)
--
--
--tellCar :: Car ->  String
--tellCar :: (Show a) => Car String String a -> String
--tellCar (Car {company = c,model = m,year = y}) = "This " ++ c ++ " " ++ m ++ "was made in " ++ show y
data Vector a = Vector a a a deriving (Show)
vplus :: (Num a) => Vector a -> Vector a -> Vector a
(Vector i j k) `vplus` (Vector l m n) = Vector (i +l) (j+m) (k+n)

dotProd :: (Num a) => Vector a -> Vector a -> a
(Vector i j k) `dotProd` (Vector l m n) = i*l + j*m + k*n

vmult :: (Num a) => Vector a -> a -> Vector a
(Vector i j k) `vmult` m = Vector (i * m ) (j * m) (k * m)
