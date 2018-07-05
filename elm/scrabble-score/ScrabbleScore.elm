module ScrabbleScore exposing (scoreWord)

import Char exposing (..)

scoreWord : String -> Int
scoreWord x =
  List.foldr (\letter total ->
    let
      letterCheck = letterIncluded letter

    in  
      if (Tuple.first (letterCheck)) then
        (Tuple.second (letterCheck)) + total 
      else  
        total
    ) 0 (String.toList x)

letterList : List (List Char, Int)
letterList =
  [ (['A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T'], 1)
  , (['D', 'G'], 2)
  , (['B', 'C', 'M', 'P'], 3)
  , (['F', 'H', 'V', 'W', 'Y' ], 4)  
  , (['K'], 5)
  , (['J', 'X'], 8)
  , (['Q', 'Z'], 10)
  ] 

letterIncluded : Char -> (Bool, Int)
letterIncluded letter = 
  List.foldr (\letterSet bool ->
      if List.member (Char.toUpper letter) (Tuple.first letterSet) then
        (True, (Tuple.second letterSet))
      else
        ((Tuple.first bool), (Tuple.second bool))  
    ) (False, 0) letterList 


