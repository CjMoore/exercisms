module Pangram exposing (..)

import Set exposing (..)

isPangram : String -> Bool
isPangram sentence = 
  String.toLower sentence
    |> String.toList
    |> Set.fromList
    |> Set.diff alphabet
    |> Set.isEmpty

alphabet : Set.Set Char
alphabet = 
  Set.fromList
  [ 'a'
  , 'b'
  , 'c'
  , 'd'
  , 'e'
  , 'f'
  , 'g'
  , 'h'
  , 'i'
  , 'j'
  , 'k'
  , 'l'
  , 'm'
  , 'n'
  , 'o'
  , 'p'
  , 'q'
  , 'r'
  , 's'
  , 't'
  , 'u'
  , 'v'
  , 'w'
  , 'x'
  , 'y'
  , 'z'
  ]

