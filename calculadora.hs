{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Redundant bracket" #-}
module Main where
import Text.Printf (printf)

hip :: Float -> Float -> Float
hip catA catO = sqrt(catA**2+catO**2)

somatorio :: Int -> Int
somatorio 1 = 1
somatorio n = somatorio(n-1) + n

produto :: Int -> Int
produto 1 = 1
produto n = produto(n-1) * n

decideOp :: Int -> Float -> Float -> Float
decideOp op prim seg
    | op == 1 = prim + seg
    | op == 2 = prim - seg
    | op == 3 = prim * seg
    | op == 4 = prim  / seg
 

loopMain :: IO ()
loopMain = do
    calcPrinc
    putStrLn "Deseja fazer mais alguma operação? S para sim, N para não"
    opcao <- getLine

    if opcao == "S" || opcao == "s"
        then loopMain
        else putStrLn "Obrigada por usar a calculadora!"


calcPrinc :: IO ()
calcPrinc = do
    putStrLn "----------Calculadora------------"
    putStrLn "Escolha uma opção:"
    putStrLn "1 - Soma"
    putStrLn "2 - Subtração"
    putStrLn "3 - Multiplicação"
    putStrLn "4 - Divisão"
    putStrLn "5 - Outras operações"
    op <- readLn

    if (op/=5)
        then
            do 
                putStrLn "Digite o primeiro termo"
                prim <- readLn

                putStrLn "Digite o segundo termo"
                seg <- readLn

                printf "Resultado: %.2f \n" (decideOp op prim seg)

        else
            do
                putStrLn "Escolha uma opção:"
                putStrLn "1 - Cálculo da hipotenusa pelos catetos"
                putStrLn "2 - Somatório"
                putStrLn "3 - Produto"
                putStrLn "4 - Potência"
                putStrLn "5 - Raíz quadrada"

                op <- readLn

                case op of 
                    1 -> do
                        putStrLn "Digite o cateto adjascente"
                        catA <- readLn

                        putStrLn "Digite o cateto oposto"
                        catO <- readLn

                        printf "Resultado: %.2f \n" (hip catA catO)

                    2 -> do
                        putStrLn "Digite o n"
                        n <- readLn
                        printf "Resultado: %.d \n" (somatorio n)

                    3 -> do
                        putStrLn "Digite o n"
                        n <- readLn
                        printf "Resultado: %.d \n" (produto n)

                    4 -> do
                        putStrLn "Digite a base"
                        bas:: Int <- readLn 

                        putStrLn "Digite o expoente"
                        exp :: Int <- readLn

                        printf "Resultado: %.d \n" (bas^exp)

                    5 -> do
                        putStrLn "Digite o radicando"
                        n :: Float <- readLn
                        printf "Resultado: %.2f \n" (sqrt n)

                    

                
    
    

main :: IO ()
main = loopMain