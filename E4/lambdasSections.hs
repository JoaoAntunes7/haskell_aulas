somaUm :: [Int] -> [Int]
somaUm xs = map (\x -> x + 1) xs

filtraNegativos :: [Int] -> [Int]
filtraNegativos xs = filter (\x -> x <= 0) xs 

dobraLista :: [Int] -> [Int]
dobraLista xs = map (\x -> (*2) x) xs

somaTres :: [Int] -> [Int]
somaTres xs = map (\x -> (+3) x) xs

aplicaSecao :: (Int -> Int) -> Int -> Int
aplicaSecao secao = secao 

main :: IO ()
main = do
    let lista = [1, 2, 3]
    let resultado = somaUm lista
    putStrLn $ "Resultado da somaUm: " ++ show resultado


