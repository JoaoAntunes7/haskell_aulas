--- 10
myTake :: Int -> [a] -> [a]
myTake n xs
    | n <= 0    = []
    | null xs   = []
    | otherwise = head xs : myTake (n - 1) (tail xs)

--- 11
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter p xs
    | null xs     = []
    | p (head xs) = head xs : myFilter p (tail xs)
    | otherwise   = myFilter p (tail xs)

fizzbuzz :: Int -> String
fizzbuzz n
    | n `mod` 15 == 0 = "FizzBuzz"
    | n `mod` 3 == 0 = "Fizz"
    | n `mod` 5 == 0 = "Buzz"
    | otherwise = show n

main :: IO ()
main = do
    putStrLn "15->'FizzBuzz', 3->'Fizz', 5->'Buzz'"
    n <- readLn
    putStrLn $ "Resultado: " ++ show (fizzbuzz n)

    putStrLn $ "mytake_resultado: " ++ show (myTake 3 [1..])
    putStrLn $ "myfilter_resultado: " ++ show (myFilter odd [1..10])