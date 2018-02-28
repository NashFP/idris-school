
# Idris School Lesson 2

Based on Chapter 2 of Edwin Brady's "Type Driven Development" ([link](https://www.manning.com/books/type-driven-development-with-idris))

Places to learn:
* Our Textbook 
* Idris Tutorial https://eb.host.cs.st-andrews.ac.uk/writings/idris-tutorial.pdf
* Help on builtin functions (Prelude) and docs
  * Root: https://www.idris-lang.org/docs/1.2/
  * Strings: https://www.idris-lang.org/docs/1.2/base_doc/docs/Prelude.Strings.html
* Learn You a Haskell for Great Good: "http://learnyouahaskell.com/chapters" 
* Haskell cheat sheet: http://cheatsheet.codeslower.com/CheatSheet.pdf
* Docs in the REPL
```
Idris> :doc Prelude.List.reverse
Prelude.List.reverse : List a -> List a
    Return the elements of a list in reverse order.

    The function is Total
```
* The code from Edwin's "Type Driven Development" book uses the MIT License (Yay!) 
and is available here: https://github.com/edwinb/TypeDD-Samples

## Exploring

* Peek at "Add" in /book/Chapter2/Partial.ibr
* Homework round up!

Playing with things learned:

```
REPL goodies
:t
:r
:exec
:quit
:let 

the Nat (cast 5)
the String (cast 5)
:t the

-- Tuples
:let t = (1, "Hey!")
fst t
snd t

-- Define the missing piece. 
:let get3rd : (a,b,c) -> c ; get3rd (_,_,x) = x 

length [1,2,3,4]

-- Hey look in-REPL docs!
:doc 

-- Built-in list processing bits

map (\x => x + 100) [1, 24, 16, 5, 5, 6, 7, 99]
map (+ 100) [1, 24, 16, 5, 5, 6, 7, 99]

filter (\x => x > 10) [1, 24, 16, 5, 5, 6, 7, 99]
filter (> 10) [1, 24, 16, 5, 5, 6, 7, 99]

```