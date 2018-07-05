module Anagram exposing (detect)


detect : String -> List String -> List String
detect word candidates =
  case candidates of
    [] ->
      candidates
    x::tail ->
      if checkAnagram word x then
        [x] ++ (detect word tail)
      else  
        detect word tail


checkAnagram : String -> String -> Bool
checkAnagram word candidate =
  let
    wordList = 
      String.toLower word
      |> String.toList
    candidateList = 
      String.toLower candidate
      |> String.toList
  in
    if wordList == candidateList then
      False 
    else  
      (List.sort wordList) == (List.sort candidateList)

