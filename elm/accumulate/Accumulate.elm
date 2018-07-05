module Accumulate exposing (..)

accumulate : (a -> a) -> List a -> List a
accumulate f list =
  case list of 
    [] -> 
      list
    x::tail ->
       [(f x)] ++ accumulate f tail 
