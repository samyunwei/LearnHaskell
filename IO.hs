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

--main = do
--    let a =  "hell"
--        b =  "yeah!"
--    putStrLn $ a ++ " " ++ b

--main = do
--    putStr "Hey, "
--    putStr "I'm "
--    putStrLn "Andy! "
--

--main = do
--    putChar 't'
--    putChar 'e'
--    putChar 'h'

--putStr2 :: String -> IO ()
--putStr2 [] = return ()
--putStr2 (x:xs) = do
--     putChar x
--     putStr2 xs


--main = do
--    print True
--    print 2
--    print "haha"
--    print 3.2
--    print [3,4,3]

--import Control.Monad
--main = do
--    input <- getLine
--    when (input == "SWORDFISH") $ do
--        putStrLn input

--main = do
--    input <- getLine
--    if  (input == "SWORDFISH")
--        then putStrLn input
--    else return ()
  
--main = do
--    a <- getLine
--    b <- getLine
--    c <- getLine
--    print [a,b,c]

--main = do
--    rs <- sequence [getLine,getLine,getLine]
--    print rs

--import Control.Monad
--import Data.Char
--main = forever $ do
--    putStr "Give me some input: "
--    l <- getLine
--    putStrLn $ map toUpper l
--

import Control.Monad
main = do
    colors <- forM [1,2,3,4] (\a -> do
        putStrLn $ "Which color do you associate with the summer "
                 ++ show a ++ "?"
        color <- getLine
        return color)
    putStrLn "The colors that you ssociate with 1,2,3 and 4 are: "
    mapM_ putStrLn colors
