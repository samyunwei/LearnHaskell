--------------------------------------------------------------------------------------
-- File Name: module.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Tue 07 Feb 2017 12:01:54 AM CST
----------------------------------------------------------------------------
--import Data.List
--numUniques :: (Eq a) => [a] -> Int
--numUniques = length . nub
--import Data.List (nub,sort)
--import Data.List hiding(nub)
--import qualified Data.Map
--import qualified Data.Map as M
--import Data.List
--wordNums :: String -> [(String,Int)]
--wordNums = map(\ws -> (head ws,length ws)) . group . sort .words
--isIn :: (Eq a) => [a] -> [a] -> Bool
--needle `isIn` haystack = any (needle `isPrefixOf` ) (tails haystack)
--import Data.Char
--encode :: Int -> String -> String
--encode offset msg = map (\c -> chr $ ord c + offset) msg

--decode :: Int -> String -> String
--decode offset msg = map (\c -> chr $ ord c -offset) msg
--import Data.List

--digitsum :: Int -> Int
--digitsum = sum . map digitToInt . show
--
--firstTo40 :: Maybe Int
--firstTo40 = find (\x -> digitsum x == 40) [1..]
--firstTo :: Int -> Maybe Int
--firstTo n = find (\x -> digitsum x == n) [1..]


--phoneBook = [("betty","555-2938"),("bonnie","452-2928"),("pasty","493-2928"),("lucille","205-2928"),("wendy","939-8282"),("penny","853-2492")]

--findKey :: (Eq k) => k -> [(k,v)] -> v
--findKey key xs = snd . head . filter (\(k,v) -> key == k) $ xs



--findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
--findKey key[] = Nothing
--findKey key ((k,v):xs)
--    | key == k = Just v
--    | otherwise = findKey key xs
                 

--findKey :: (Eq k) => k -> [(k,v)] -> Maybe v
--findKey key xs = foldr (\(k,v) acc -> if key == key then Just v else acc) Nothing xs

import qualified Data.Map as Map
import Data.Char

--phoneBook :: Map.Map String String
--phoneBook = Map.fromList $ [("betty","555-2938"),("bonnie","452-2928"),("pasty","493-2928"),("lucille","205-2928"),("wendy","939-8282"),("penny","853-2492")]
phoneBook = [("betty","555-2938"),("betty","555-2938"),("bonnie","452-2928"),("pasty","493-2928"),("pasty","493-2928"),("pasty","493-2928"),("lucille","205-2928"),("wendy","939-8282"),("penny","853-2492"),("penny","853-2492")]

string2digits :: String -> [Int]
string2digits = map digitToInt . filter isDigit

--phoneBookToMap :: (Ord k) => [(k,String)] -> Map.Map k String
--phoneBookToMap xs = Map.fromListWith add xs
--    where add number1 number2 = number1 ++ ", " ++ number2
phoneBookToMap :: (Ord k) => [(k,a)] -> Map.Map k [a]
phoneBookToMap xs = Map.fromListWith (++) $ map (\(k,v) -> (k,[v])) xs
