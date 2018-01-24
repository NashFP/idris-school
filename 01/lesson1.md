# Lesson 1

Checklist 

### Install Idris

Go here:
https://www.idris-lang.org/download/

The binary packages are easiest.

### Review a bunch of links:

* Language website: https://www.idris-lang.org/
* Syntax: http://docs.idris-lang.org/en/latest/reference/syntax-guide.html
* Github: https://github.com/idris-lang/Idris-dev
* Google Group: https://groups.google.com/forum/#!forum/idris-lang
* VS Code plugin: https://github.com/zjhmale/vscode-idris
* Twitter: https://twitter.com/idrislang
* Irc: http://webchat.freenode.net/ #idris
* Functional Kats workshop: https://www.idris-lang.org/documentation/workshops/kats-workshop-may-2016/
* Idris Tutorial: http://docs.idris-lang.org/en/latest/tutorial/

### Talk throgh the "About"

> “Idris is a general-purpose purely functional programming language with dependent types, strict or optional lazy evaluation and features such as a totality checker.”

Let's unpack this:
* General-purpose
* Purely functional
* Dependent types
* Strict 
* Totality checker
* Haskell-like with sufficient performance
* Type system like Agda
* Theorem proving similar to Coq including “tactics"
* Easy management of side-effects
* Supports implementing embedded domain specific languages

## Hello Idris

Walk through [hello_world.idr](./hello_world.idr)


## Introductory exercises
From the textbook: 
"Throughout this book, exercises will help reinforce the concepts you’ve learned. As a warm-up, take a look at the following selection of function specifications, given purely in the form of input and output types. For each of them, suggest possible operations that would satisfy the given input and output types. Note that there could be more than one answer in each case."

```
Input type: Vect n elem Output type: Vect n elem
Input type: Vect n elem Output type: Vect (n * 2) elem
Input type: Vect (1 + n) elem Output type: Vect n elem
Assume that Bounded n represents a number between zero and n - 1. Input types: Bounded n, Vect n elem Output type: elem
```

## Homework for next time

* Read chapter 1 and chapter 2
* Add your Idris FizzBuzz solution to our [FizzBuzz repo](https://github.com/NashFP/fizzbuzz)