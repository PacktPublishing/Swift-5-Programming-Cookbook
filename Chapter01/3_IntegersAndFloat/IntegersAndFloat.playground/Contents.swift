import UIKit

// 1 - Declaring Integer

// Signed Int
let numberOfWheels = 4

// Unsigned Int
let zAxis = -65

// 2 - Integer Bounds

let minInt8Value = Int8.min
let maxInt8Value = Int8.max

let minInt16Value = Int16.min
let maxInt16Value = Int16.max

let minInt32Value = Int32.min
let maxInt32Value = Int32.max

let minInt64Value = Int64.min
let maxInt64Value = Int64.max

let minValue = Int.min
let maxValue = Int.max

// 3 - Creates an integer from the given floating-point value, rounding toward zero.

// Any fractional part of the value passed as `source` is removed, rounding the value toward zero.
let x = Int(24.5)
// x == 24

let y = Int(-24.5)
// y == -24

// If `source` is outside the bounds of this type after rounding toward zero, a runtime error may occur.

// let z = UInt(-24.5)
// Error: ...the result would be less than UInt.min

// 4 - Creates an integer from the given floating-point value, if it can be represented exactly.

let exactX = Int(exactly: 24.0)
// exactX == 24

let exactY = Int(exactly: 24.5)
// exactY == nil

// 5 - Creates a new integer value from the given string.

let stringToInt = Int("245")
// stringToInt == 245

Int(" 245")                       // Includes whitespace
Int("24-50")                      // Invalid format
Int("ff6600")                     // Characters out of bounds
Int("10000000000000000000000000") // Out of range

// 6 - Declaring Float

let thisIsFloat: Float = 3.14159_26535 // precision of at least 6 decimal digits
print(thisIsFloat)
let thisIsDouble: Double = 3.14159_26535_89793_23846 // precision of at least 15 decimal digits
print(thisIsDouble)

// 7 - Float Bounds

let pi = Float.pi

let minFloatNonzeroValue = Float.leastNonzeroMagnitude
let minFloatNormalValue = Float.leastNormalMagnitude
let maxFloatValue = Float.greatestFiniteMagnitude

let minDoubleNonzeroValue = Double.leastNonzeroMagnitude
let minDoubleNormalValue = Double.leastNormalMagnitude
let maxDoubleValue = Double.greatestFiniteMagnitude

Float32.leastNonzeroMagnitude
Float32.leastNormalMagnitude
Float32.greatestFiniteMagnitude

Float64.leastNonzeroMagnitude
Float64.leastNormalMagnitude
Float64.greatestFiniteMagnitude

Float80.leastNonzeroMagnitude
Float80.greatestFiniteMagnitude

// 8 - Creates the closest representable value to the given integer.

let i = Float.init(24)
i == 24.0

let j = Float.init(-24)
j == -24.0

// 9 - Creates a value that exactly represents the given integer.

let exactlyI = Float.init(exactly: 24)
// exactlyI == 24.0

// There's More..

let sixtyFour = 64

var isMultiple = sixtyFour.isMultiple(of: 8)
isMultiple = sixtyFour.isMultiple(of: 16)
isMultiple = sixtyFour.isMultiple(of: 7)

// Replacement of (i % 2 == 0)
let evenOddNumbers = [1, 2, 3, 4, 5, 6, 7]
for number in evenOddNumbers {
    let isEven = number.isMultiple(of: 2)
    if isEven {
        print(number, "is even: ", isEven)
    } else {
        print(number, "is odd: ", !isEven)
    }
}
