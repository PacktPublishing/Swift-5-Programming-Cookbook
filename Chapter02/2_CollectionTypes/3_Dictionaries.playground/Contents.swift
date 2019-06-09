import UIKit

// 1. Create an Empty Dictionary
var stringAsIntegers = [String: Int]()
// stringAsIntegers is an empty [String: Int] dictionary

stringAsIntegers["eight"] = 8
// stringAsIntegers now contains 1 key-value pair

stringAsIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [String: Int]

// 2. Create a Dictionary with a Dictionary Literal
var stocks: [String: String] = ["AAPL": "Apple Inc.", "NKE": "NIKE"]

var stockMarket = ["AAPL": "Apple Inc.", "NKE": "NIKE"]

// 3. Counting Dictionary
print("The stocks dictionary contains \(stocks.count) items.")
// Prints "The stocks dictionary contains 2 items."

// 4. Check Empty Dictionary
if stocks.isEmpty {
    print("The stocks dictionary is empty.")
} else {
    print("The stocks dictionary is not empty.")
}
// Prints "The stocks dictionary is not empty."

// 5. Add new item
stocks["SBUX"] = "Starbucks"
// the stocks dictionary now contains 3 items

// 6. Change value using subscript
stocks["SBUX"] = "Starbucks Corporation"
// the value for "SBUX" has been changed to "Starbucks Corporation"

// 7. update value using 'updateValue' function
if let oldValue = stocks.updateValue("NIKE, Inc.", forKey: "NKE") {
    print("The old value for NKE was \(oldValue).")
}
// Prints "The old value for NKE was NIKE."

// 8. Access optional dictionary value using subscript
if let companyName = stocks["SBUX"] {
    print("The name of the company is \(companyName).")
} else {
    print("That company is not in the NASDAQ list.")
}
// Prints "The name of the company is Starbucks Corporation."

// 9. Remove dictionary value
stocks["CPT"] = "Cupertino Corporation"
// "Cupertino Corporation" is not the real company, so delete it
stocks["CPT"] = nil
// CPT has now been removed from the dictionary

// 10. Remove optional dictionary value
if let removedValue = stocks.removeValue(forKey: "SBUX") {
    print("The removed company's name is \(removedValue).")
} else {
    print("The stocks dictionary does not contain a value for SBUX.")
}
// Prints "The removed company's name is Starbucks Corporation."

// There's more...

// Iterating Over a Dictionary

for (companyCode, companyName) in stocks {
    print("\(companyCode): \(companyName)")
}
// NKE: NIKE, Inc.
// AAPL: Apple Inc.

for companyCode in stocks.keys {
    print("Company code: \(companyCode)")
}
// Company code: AAPL
// Company code: NKE

for companyName in stocks.values {
    print("Company name: \(companyName)")
}
// Company name: Apple Inc.
// Company name: NIKE, Inc.

let companyCodes = [String](stocks.keys)
// companyCodes is ["AAPL", "NKE"]

let companyNames = [String](stocks.values)
// companyNames is ["Apple Inc.", "NIKE, Inc."]
