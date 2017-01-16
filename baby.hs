--------------------------------------------------------------------------------------
-- File Name: baby.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Tue 17 Jan 2017 12:43:55 AM CST
----------------------------------------------------------------------------
doubleMe x = x + x
doubleUs x y = doubleMe x + doubleMe y
doubleSmallNumber x = if x > 100 then x else x * 2
doubleSmallNumber' x = (if x > 100 then x else x * 2) + 1
conanO'Brien = "It's a-me, Conan O'Brien!"

