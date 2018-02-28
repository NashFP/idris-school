module Main
-- Fizzbuzz! EXTREME SINGLE-LINE-COMMENT EDITION!!!

{-
  This is a multiline comment which makes
  making long-winded comments easier.
-}

data Answer = Fizzbuzz
            | Fizz
            | Buzz
            | Plain Nat

-- If you Haskell, this would be 'instance' 
implementation Show Answer where
  show Fizzbuzz = "Fizzbuzz"
  show Fizz = "Fizz"
  show Buzz = "Buzz"
  show (Plain a) = show a
 

||| Plays fizzbuzz against the provided Nat. A Nat evenly divisible 
||| by both 3 and 5 returns FizzBuzz, a Nat evenly divisible by 3 
||| returns Fizz, a Nat evenly divisible by 5 returns Buzz, and
||| any other Nat will return a Plain Nat.
|||
||| ```idris example
||| play 15
||| ```
||| ```idris example
||| play 5
||| ```
||| ```idris example
||| play 6
||| ```
||| ```idris example
||| play 7
||| ```

play : (x : Nat) -> Answer
play x =
  let 
    fizz_mod = modNat x 3
    buzz_mod = modNat x 5
  in 
    helper x fizz_mod buzz_mod
  where
    helper : (x : Nat)  -> Nat -> Nat -> Answer
    helper _ Z Z = Fizzbuzz
    helper _ Z _ = Fizz
    helper _ _ Z = Buzz
    helper x _ _ = Plain x 

play_to_string : Nat -> String
play_to_string x = show (play x)

main : IO ()
main =  
  let 
    answers = map (\x => play_to_string x) [1..20]
    --answers = map play_to_string [1..20] -- <-- Shorter anonymous function syntax than line above
    message = unwords answers
  in
    putStrLn message
