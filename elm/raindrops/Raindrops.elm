module Raindrops exposing (..)

raindrops : Int -> String
raindrops num = 
  let
    wordsFromFactors = words num 
  in
    if String.isEmpty wordsFromFactors then
      toString num
    else
      wordsFromFactors  


words : Int -> String
words num = 
  List.foldl (\word tuple -> 
                if (isFactor (Tuple.first tuple) num) then
                  ((Tuple.first tuple) + 2, (Tuple.second tuple) ++ word)
                else
                  ((Tuple.first tuple) + 2, (Tuple.second tuple))
             ) (3, "") ["Pling", "Plang", "Plong"]
             |> Tuple.second


isFactor : Int -> Int -> Bool
isFactor possible num = 
  num % possible == 0 
