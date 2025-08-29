leap :: Int -> Bool
leap y
    |y `mod` 400 == 0 = True
    |y `mod` 100 == 0 = False
    |y `mod` 4   == 0 = True
    |otherwise        = False

--- 7
tax :: Double -> Double
tax s
    |s >= 1200 = 0
    |s <= 2500 = (s - 1200) * 0.10
    |otherwise = (2500 - 1200) * 0.10 + (s - 2500) * 0.20

main :: IO ()
main = do
    putStrLn "Digite o ano:"
    ano <- readLn :: IO Int
    putStrLn $ "É ano bissexto>: " ++ show (leap ano)

    putStrLn "Digite o salário:"
    salario <- readLn :: IO Double
    putStrLn $ "Imposto: " ++ show (tax salario)