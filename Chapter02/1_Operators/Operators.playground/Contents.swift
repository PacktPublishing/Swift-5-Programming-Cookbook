import UIKit

// 1. Assignment Operator
let a = 10
var b = 20
b = a
// b is now equal to 10

var (x, y) = (10, 20)
// x is equal to 10, and y is equal to 20

/* if x = y {
    // This is not valid, because x = y does not return a value.
}*/

// 2. Arithmetic Operators
10 + 20 // Addition (+)
20 - 10 // Subtraction (-)
10 * 20 // Multiplication (*)
20 / 10 // Division (/)

"Hey" + "There" // String concatenation

// 3. Remainder Operator

20 % 3 // equals 2
// 20 = (6 x 3) + 2

-5 % 2 // equals -1
// -5 = (2 x -2) + -1

// 4. Unary Plus and Minus Operators

let minusSeven = -7
let alsoMinusSeven = +minusSeven  // alsoMinusSix equals -7

let five = 5
let minusFive = -five       // minusFive equals -5
let plusFive = -minusFive   // plusFive equals 5, or "minus minus five"

// 5. Compound Assignment Operators

var c = 3
c += 5
// c is now equal to 8

c -= 5
// c is now equal to 3

// The compound assignment operators don’t return a value. For example, you can’t write
// let b = a += 5

// 6. Comparison Operators

5 == 5   // true because 5 is equal to 5
5 != 3   // true because 5 is not equal to 3
5 > 3    // true because 5 is greater than 3
3 < 5    // true because 3 is less than 5
5 >= 5   // true because 5 is greater than or equal to 5
5 <= 3   // false because 5 is not less than or equal to 3

// 7. Create a if statement using comparison operators
let name = "John"
if name == "John" {
    print("Hey \(name), You are using WhatsApp!")
} else {
    print("I'm sorry \(name), but you are not using WhatsApp...")
}
// Prints "Hey John, You are using WhatsApp!", because name is indeed equal to "John".

// 8. Compare Tuples using comparison operators

(3, "zulu") < (5, "alpha")
// true because 3 is less than 5; "zulu" and "alpha" are not compared

(5, "alpha") < (5, "bravo")
// true because 5 is equal to 5, and "alpha" is less than "bravo"

(5, "charlie") == (5, "charlie")
// true because 5 is equal to 5, and "charlie" is equal to "charlie"

("brown", -1) < ("pink", 1)
// OK, evaluates to true

//("brown", false) < ("pink", true)
// Error because < can't compare Boolean values

// 9. Ternary Conditional Operator

let yourHeight = 40
let hasShoes = true
let yourFinalHeight = yourHeight + (hasShoes ? 50 : 20)
// rowHeight is equal to 90

// The example above is shorthand for the code below:
/*
let yourHeight = 40
let hasShoes = true
let yourFinalHeight: Int
if hasShoes {
    yourFinalHeight = yourHeight + 50
} else {
    yourFinalHeight = yourHeight + 20
}*/
// yourFinalHeight is equal to 90

// 10. Nil-Coalescing Operator

let defaultUserName = "John"
var userDefinedName: String?   // defaults to nil

var userNameToUse = userDefinedName ?? defaultUserName
// userDefinedName is nil, so userNameToUse is set to the default of "John"

userDefinedName = "Paul"
userNameToUse = userDefinedName ?? defaultUserName
// userDefinedName is not nil, so userNameToUse is set to "Paul"

// There's more...

// Operator Overloading
typealias Vector = (Int, Int)

let xOrigin = (3, 1)
let yOrigin = (2, 4)

func + (left: Vector, right: Vector) -> Vector {
    return (left.0 + right.0, left.1 + right.1)
}

let combinedOrigin = xOrigin + yOrigin
// combinedOrigin is a Vector tuple with values of (5, 5)
