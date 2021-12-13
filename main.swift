// 
//  Created by Jonathan Pasco-Arnone
//  Created on 2021-12-07
//  Version 1.0
//  Copyright (c) 2021 Jonathan Pasco-Arnone. All rights reserved.
//
//  In order to compile and run these files,
//  I had to use the following command:
//  "swiftc -o main main.swift MrCoxallStack.swift; ./main"
//  This program uses a custom class.

import Foundation

// Making an error case.
enum MyError: Error {
    case invalidInteger(String)
}

// Variables/Constants.
let aStack: MrCoxallStack = MrCoxallStack()
let addedNewNumber: String = "Added"
let popNumber: String = "Popped "
let newStack: String = "\nNew Stack"
let failedPush: String = "Cannot add to stack, it is not an integer"

print("Initial stack")
aStack.showStack()

/*
* Push
*/
print("\n----- Push -------\n")

do {
    // Adding the first number
    print("First Number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
       throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

do {
    // Adding the second number
    print("Second Number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
        throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

do {
    // Adding the third number
    print("Third Number: ")
    if let number: Int = Int(readLine()!) {
        aStack.push(pushNumber: number)
        print(addedNewNumber, number)
    } else {
        throw MyError.invalidInteger("Error")
    }
    print(newStack)
    aStack.showStack()
} catch {
    print(failedPush)
}

/*
* Pops
*/
print("\n----- Pop -------\n")

let poppedNumber: Int = aStack.pop()
if poppedNumber != -1 {
    print(popNumber, poppedNumber)
    print(newStack)
    aStack.showStack()
}
print("\nDone.")
