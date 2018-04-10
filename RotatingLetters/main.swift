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
var validInput = ""
while 1==1 {
    guard let givenInput = readLine() else {
        //Error
        print("Please input string between 1-30 UPPERCASE characters with NO SPACES")
        continue
    }
    if givenInput.count < 1 || givenInput.count > 30 || givenInput == " "  {
        print("Please input string between 1-30 UPPERCASE characters with NO SPACES")
        continue
    }
    validInput = givenInput
    break

}



//Process
var rotaingLetter = 0
var nonRotatingLetter = 0
for letter in validInput {
    //print(letters)
    
    switch letter {
    case "I" , "O" , "S" , "H" , "Z" , "X" , "N" :
        rotaingLetter += 1
    case "A" , "B" , "C" , "D" , "E" , "F" , "G" , "J" , "K" , "L" , "M" , "P" , "Q" , "R" , "T" , "U" , "V" , "W" , "Y"  :
        nonRotatingLetter += 1000
    case "a" , "b" , "c" , "d" , "e" , "f" , "g" , "j" , "k" , "l" , "m" , "p" , "q" , "r" , "t" , "u" , "v" , "w" , "y" :
        nonRotatingLetter += 1000
    default:
        break
    }
    
}

//Output
if rotaingLetter > nonRotatingLetter {
    print("Yes")
} else if nonRotatingLetter > rotaingLetter {
    print("No")
} else {
    print("Unsure")
}
