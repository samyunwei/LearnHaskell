--------------------------------------------------------------------------------------
-- File Name: IO.hs
-- Author: Sam
-- mail: samyunwei@163.com
-- Created Time: Fri 28 Apr 2017 12:03:59 AM CST
----------------------------------------------------------------------------
--main = putStrLn "hello,World!"
--main = do
--    putStrLn "Hello,what's your name?"
--    name <- getLine
--    putStrLn ("Hey " ++ name ++ ", your rock!")
main = do
    foo <- putStrLn "Hello,what's your name?"
    name <- getLine
    putStrLn ("Hey " ++ name ++ ", your rock!")
