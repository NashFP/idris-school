-- The entry point to any Idris program is the `main` function of the `Main` module  
-- >>>

-- module Main
  
-- main : IO ()
-- main =
--   putStrLn "Hi Idris!"

-- <<<

-- To compile a standalone EXE 
-- $ idris hello_world.idr -o hello

-- To compile a file and play with it in the REPL
-- $ idris hello_world.idr
-- *hello_world>

-- Now that it's loaded (note the `*hello_world>` prompt) execute the program with:
-- *hello_world> :exec
-- Hi Idris!

-- Change the code (e.g. change "Hi" to "Howdy")
-- To recompile the code without exiting the Idris REPL
-- *hello_world> :r



-- Gratuitous function time!
-- >>>

-- module Main

-- makeHello : String -> String -> String
-- makeHello greeting who = 
--   greeting ++ " " ++ who

-- main : IO ()
-- main =
--   putStrLn (makeHello "Howdy" "Idris!")

-- <<<

-- *hello_world> :r
-- *hello_world> :exec
-- Howdy Idris!
-- *hello_world>


-- Holes
-- >>>

-- module Main

-- main : IO ()
-- main =
--   putStrLn ?greeting

-- <<<

-- Recompile and see the hole "Main.greeting"

-- *hello_world> :r
-- Holes: Main.greeting


-- Next lets check the type of the hole

-- *hello_world> :t greeting
-- --------------------------------------
-- greeting : String
-- Holes: Main.greeting


-- Using holes to guide us

-- >>>

-- module Main

-- main : IO ()
-- main =
--   putStrLn 42
  
--   -- putStrLn (?printer 42)
  
--   -- putStrLn (cast 42)

-- <<<

-- OK, cast is nice! What is it?

-- *hello_world> :t cast
-- cast : Cast from to => from -> to




-- Types, cases, functions

-- >>>

module Main

StringOrInt : Bool -> Type
StringOrInt x = 
  case x of 
    True => Int
    False => String

valToString : (x : Bool) -> StringOrInt x -> String
valToString x val =
  case x of 
    True => cast val
    False => val

getStringOrInt : (x : Bool) -> StringOrInt x
getStringOrInt x = 
  case x of
    True => 42
    False => "Forty-two"

main : IO ()
main =
  -- putStrLn "Lets play a first-class type game"
  
  -- What will happen here?
  --putStrLn (getStringOrInt False)

  -- OK, now how about this instead?
  -- putStrLn (getStringOrInt True)

  -- Next, let's try our valToString with handy "cast" call
  --putStrLn (valToString False "Five")

  -- So will an Int work?
  --putStrLn (valToString True 5)
  
  -- So now let's wiggle our two function args...
  putStrLn (valToString True "Five")
  --putStrLn (valToString False 5)

  -- 


-- <<<


-- *hello_world> valToString False "Five"
-- "Five" : String
-- *hello_world> valToString True 5
-- "5" : String


