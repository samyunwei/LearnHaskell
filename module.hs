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
import Data.List
wordNums :: String -> [(String,Int)]
wordNums = map(\ws -> (head ws,length ws)) . group . sort .words
