sign :: Int -> Int 
sign x  
    | x < 0 = -1
    | x == 0  = 0
    | otherwise = 1

myAbs :: Int -> Int
myAbs x
    | x < 0 = -x
    | otherwise = x

max3 :: Int -> Int -> Int -> Int
max3 x y z = max (max x y) z

main :: IO ()
main = do
    putStrLn $ "Digite o valor de x: "
    x <- readLn :: IO Int
    let sign_resultado = sign x
    putStrLn $ "\nResultado de sign: " ++ show sign_resultado

    let abs_resultado = myAbs x
    putStrLn $ "\nResultado de myAbs: " ++ show abs_resultado

    putStrLn $ "\nDigite o valor de y: "
    y <- readLn :: IO Int
    putStrLn $ "\nDigite o valor de z: "
    z <- readLn :: IO Int

    let max3_resultado = max3 x y z
    putStrLn $ "\nResultado de max3: " ++ show max3_resultado
