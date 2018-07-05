module Strain exposing (discard, keep)


keep : (a -> Bool) -> List a -> List a
keep predicate list =
  List.foldl (\item newList -> if (predicate item) then newList ++ [item] else newList) [] list


discard : (a -> Bool) -> List a -> List a
discard predicate list =
  List.foldl (\item newList -> if (predicate item) then newList else newList ++ [item]) [] list
