
inicioLista :: [a] -> Maybe a
inicioLista []       = Nothing
inicioLista (x:_)   = Just x

segundoElemento :: [a] -> Maybe a
segundoElemento xs
    | null xs = Nothing
    | length xs < 2 = Nothing
    | otherwise = Just (head (tail xs))

ultimoElemento :: [a] -> Maybe a
ultimoElemento [] = Nothing
ultimoElemento xs = Just (last xs)

soUm :: [a] -> Bool
soUm [] = True
soUm [_] = True
soUm _   = False

total :: (Int, Int, Int) -> Int
total (x, y, z) = x + y + z

main :: IO ()
main = do
    let lista = [1,2,3]
    let listaVazia = []
    let listaUm = [2]
    putStrLn $ "O primeiro elemento da lista é: " ++ show (inicioLista lista)
    putStrLn $ "O segundo elemento da lista é: " ++ show (segundoElemento lista)
    putStrLn $ "O último elemento da lista é: " ++ show (ultimoElemento lista)
    putStrLn $ "A lista tem só um elemento? " ++ show (soUm lista)
    putStrLn $ "A lista tem só um elemento? " ++ show (soUm listaUm)

    let tupla = (1, 2, 3)
    putStrLn $ "A soma dos elementos da tupla é: " ++ show (total tupla)