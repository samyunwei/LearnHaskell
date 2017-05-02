--------------------------------------------------------------------------------------
-- File Name: reverse.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Tue 02 May 2017 11:31:23 PM CST
----------------------------------------------------------------------------
main = do
    line <- getLine
    if null line 
        then return ()
        else do
            putStrLn $ reverseWords line
            main

reverseWords :: String -> String
reverseWords = unwords . map reverse . words
