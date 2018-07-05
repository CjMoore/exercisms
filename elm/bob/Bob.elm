module Bob exposing (..)

import Regex exposing (..)

hey : String -> String
hey input = 
  let
    hasUpper = Regex.contains (regex "[A-Z]+") input
    upperInput = String.toUpper input
    onlySpaces = Regex.contains (regex "^\\s+$") input
  in
    if hasUpper && upperInput == input then
      "Whoa, chill out!"

    else if (String.endsWith "?" input) then 
     "Sure." 

    else if (String.isEmpty input) || onlySpaces then
      "Fine. Be that way!"

    else
      "Whatever."

