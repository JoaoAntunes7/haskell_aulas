import Data.Char

safeHead :: [a] -> Maybe a
safeHead []    = Nothing
safeHead (x:_) = Just x

charKind :: Char -> String
charKind c
    | isUpper c = "letra maiscula"
    | isLower c = "letra minuscula"
    | isDigit c = "digito"
    | otherwise = "especial"

main :: IO ()
main = do
    let lista = [42]
    putStrLn $ "O head da lista é: " ++ show (safeHead lista)

    let palavra = "word"
    putStrLn $ "O primeiro caractere de " ++ show palavra ++ " é " ++ show (charKind (head palavra))

    let palavra = "Word"
    putStrLn $ "O primeiro caractere de " ++ show palavra ++ " é " ++ show (charKind (head palavra))

    let palavra = "2digito"
    putStrLn $ "O primeiro caractere de " ++ show palavra ++ " é " ++ show (charKind (head palavra))

    let palavra = "&especial"
    putStrLn $ "O primeiro caractere de " ++ show palavra ++ " é " ++ show (charKind (head palavra))