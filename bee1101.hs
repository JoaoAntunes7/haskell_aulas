import Text.Printf 

func :: Int -> Int -> IO ()
func m n 
    | m <= 0 || n <= 0 = return ()
    | otherwise = do
        let [start, end] = if m < n then [m, n] else [n, m] 
            list = [start..end]
            list2 = unwords $ map show list
            sumvalue = sum list
        printf "%s Sum=%d\n" list2 sumvalue
        
        
main :: IO ()
main = do
    m <- readLn :: IO Int 
    n <- readLn :: IO Int

    if m <= 0 || n <= 0
        then return ()
        else do
            func m n
            main 