//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Make sure input was given (create a string from the string)
guard let input = rawInput else {
    //Error
    exit(9)
}

// Print out the input provided
print("You said:")
print(rawInput)
print(input)

var rotaingLetter = 0
var nonRotatingLetter = 0
for letters in input {
    print(letters)
    
    switch letters {
    case "I" , "O" , "S" , "H" , "Z" , "X" , "N" :
        rotaingLetter += 1
    case "A" , "B" , "C" , "D" , "E" , "F" , "G" , "J" , "K" , "L" , "M" , "P" , "Q" , "R" , "T" , "U" , "V" , "W" , "Y" , " " :
        nonRotatingLetter += 1000
    case "a" , "b" , "c" , "d" , "e" , "f" , "g" , "j" , "k" , "l" , "m" , "p" , "q" , "r" , "t" , "u" , "v" , "w" , "y" :
        nonRotatingLetter += 1000
    default:
        break
    }
    
}

if rotaingLetter > nonRotatingLetter {
    print("Yes")
} else if nonRotatingLetter > rotaingLetter {
    print("No")
} else {
    print("Unsure")
}
