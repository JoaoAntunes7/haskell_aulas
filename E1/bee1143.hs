import Text.Printf 

main :: IO ()
main = do
    x <- readLn :: IO Int
    y <- readLn :: IO Int
    printSeq x y 1

printSeq :: Int -> Int -> Int -> IO ()
printSeq x y aux
    | aux > y = return ()
    | otherwise = do
        printf "%d" aux
        if (aux `mod` x == 0) || (aux == y)
            then printf "\n"
            else printf " "
        printSeq x y (aux + 1)