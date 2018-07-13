verificaCoordenada :: Int -> Int -> String
verificaCoordenada x y | x == 0 && y == 0 = "origem"
                      | x > 0 && y > 0 = "primeiro quadrante"
                      | x < 0 && y > 0 = "segundo quadrante"
                      | x < 0 && y < 0 = "terceiro quadrante"
                      | x > 0 && y < 0 = "quarto quadrante"
                      | x == 0 && y /= 0 = "eixo y"
                      | x /= 0 && y == 0 = "eixo x"

main :: IO ()
main = do

	coord1 <- getLine
	coord2 <- getLine
	
	putStrLn $ verificaCoordenada (read coord1) (read coord2)
