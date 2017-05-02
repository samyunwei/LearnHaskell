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
--main = do
--    foo <- putStrLn "Hello,what's your name?"
--    name <- getLine
--    putStrLn ("Hey " ++ name ++ ", your rock!")

--import Data.Char
--main = do
--   putStrLn "What's your first name?'"
--   firstName <- getLine
--   putStrLn "What's your last name?"
--   lastname <- getLine
--   let bigFistName = map toUpper firstName
--       bigLastName = map toUpper lastname
--   putStrLn $ "hey " ++ bigFistName ++ " " ++ bigLastName ++ ", how are you?"
--
--

--main = do
--    return ()
--    return "HAHAHA"
--    line <- getLine
--    return "BLAH BLAH BLAH"
--    return 4
--    putStrLn line

--main = do
--    a <- return "hell"
--    b <- return "yeah!"
--    putStrLn $ a ++ " " ++ b

main = do
    let a =  "hell"
        b =  "yeah!"
    putStrLn $ a ++ " " ++ b
