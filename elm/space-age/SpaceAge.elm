module SpaceAge exposing (Planet(..), ageOn)


type Planet
    = Mercury
    | Venus
    | Earth
    | Mars
    | Jupiter
    | Saturn
    | Uranus
    | Neptune


ageOn : Planet -> Float -> Float
ageOn planet seconds =
    seconds / yearInSeconds planet

yearInSeconds : Planet -> Float
yearInSeconds planet = 
  case planet of 
    Earth -> 
      31557600
    Mercury ->
      7600543
    Venus ->
      19414149
    Mars ->
      59354032
    Jupiter ->
      374355659
    Saturn ->
      929292362
    Uranus ->
      2651370019
    Neptune ->
      5200418560  
