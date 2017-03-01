--------------------------------------------------------------------------------------
-- File Name: data.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Thu 02 Mar 2017 12:35:54 AM CST
----------------------------------------------------------------------------
data Shape = Circle Float Float Float | Rectangle Float Float Float Float deriving (Show)
area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 -x1) * (abs $ y2 -y1)

