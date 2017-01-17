--------------------------------------------------------------------------------------
-- File Name: baby.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Tue 17 Jan 2017 12:43:55 AM CST
----------------------------------------------------------------------------
--doubleMe x = x + x
--doubleUs x y = doubleMe x + doubleMe y
--doubleSmallNumber x = if x > 100 then x else x * 2
--doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
---conanO'Brien = "It's a-me, Conan O'Brien!"
--lostNumbers = [4,8,15,16,23,42]
--b = [[1,2,3,4],[5,3,3,3],[1,2,2,3,4],[1,2,3]]
--boomBangs xs = [if x < 10 then "BOOM" else "BANG" | x <- xs, odd x]
--nouns  = ["hobo","frog","pope"]
--adjectives = ["lazy","grouchy","scheming"]
--length' xs = sum [1 | _ <- xs]
--removeNonUppercase st = [c | c <-st, c `elem` ['A' .. 'Z']]
--xxs = [[1,3,5,2,3,1,2,4,5],[1,2,3,4,5,6,7,8,9],[1,2,4,2,1,6,3,1,3,2,3,6]]
triples = [(a,b,c) | c <- [1..10],a <- [1..10],b <- [1..10]]
rightTriangles = [(a,b,c) | c <- [1..10],a <-[1..c],b <-[1..a]]
rightTriangles' = [(a,b,c) | c <- [1..10], a<- [1..c],b <-[1..a], a^2 + b^2 == c^2,a+b+c == 24]
