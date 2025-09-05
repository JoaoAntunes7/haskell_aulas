

--- 4
bmiClass :: Double -> String
bmiClass bmi
    | bmi < 18.5 = "baixo"
    | bmi < 25.0 = "normal"
    | bmi < 30.0 = "sobrepeso"
    | otherwise  = "obesidade"

--- 5 
grade :: Double -> Char
grade g
    |g >= 9 = 'A'
    |g >= 7 = 'B'
    |g >= 5 = 'C'
    |g >= 3 = 'D'
    |otherwise = 'F'

main :: IO ()
main = do
    bmi <- readLn :: IO Double
    let bmiClass_resultado = bmiClass bmi
    print bmiClass_resultado
    
    g <- readLn :: IO Double


    let grade_resultado = grade g
    print grade_resultado