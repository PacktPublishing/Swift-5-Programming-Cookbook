import UIKit

// 1 - Initializing a String
let thisIsAString = "This is String in Swift"

// 2 - Multi-line string
let description = """
"The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France.
It is named after the engineer Gustave Eiffel, \
whose company designed and built the tower." - Wikipedia
"""

// 3 - Special Characters in String Literals
var didYouKnow =  "\"It is Illegal to take photographs of the Eiffel Tower at Night.\" - trendpickle.com"
didYouKnow = #""It is Illegal to take photographs of the Eiffel Tower at Night." - trendpickle.com"#

// "It is Illegal to take photographs of the Eiffel Tower at Night." - trendpickle.com
let poundSign = "\u{A3}"        // £,   Unicode scalar U+00A3
let blackSpade = "\u{2660}"     // ♠,   Unicode scalar U+2660
let registerSign = "\u{AE}"     // ®,   Unicode scalar U+00AE

// 4 - Initializing an Empty String
let thisIsAnEmptyString = ""
let anotherEmptyString = String()

if thisIsAnEmptyString.isEmpty {
    print("This is an empty String")
}
// Prints "This is an empty String"

// 5 - String Mutability
var thisIsVariableString = "Player Unknown's"
thisIsVariableString += " Battle grounds"
// variableString is now "Player Unknown's Battle grounds"

let thisIsConstantString = "Range Rover"
// constantString += " and Land Rover"
// this reports a compile-time error - a constant string cannot be modified

// 6 - Working with Characters
for character in thisIsConstantString {
    print(character)
}
// R
// a
// n
// g
// e

// R
// o
// v
// e
// r

// stand-alone Character constant or variable
let questionMark: Character = "?"

// 7 - Concatenating Strings and Characters
let combinedString = thisIsConstantString + registerSign

thisIsVariableString.append(questionMark)

// 8 - Accessing String Elements
let name = "Eiffel Tower"
let firstSpace = name.firstIndex(of: " ") ?? name.endIndex
let firstName = name[..<firstSpace]
// firstName == "Eiffel"

// 9 - String Interpolation
print("\(name)'s first name has \(firstName.count) letters.")
// Prints "Eiffel Tower's first name has 6 letters."

// 10 - Comparing Strings
let fiance = "fiancé"
let fianceWithUnicode = "fiance\u{301}"
if fiance == fianceWithUnicode {
    print("Both are same")
}

// There's More...

struct Book {
    var bookName: String
    var publishDate: Date
}

let swiftCookbook = Book(bookName: "Swift Cookbook", publishDate: Date())
print("Book Details: \(swiftCookbook)")
// Book Details: Book(bookName: "Swift Cookbook", publishDate: 2019-03-24 05:22:01 +0000)

struct BookFormatted {
    var bookName: String
    var publishDate: Date
}

let swift5Cookbook = BookFormatted(bookName: "Swift 5 Cookbook", publishDate: Date())

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: BookFormatted) {
        appendInterpolation("\(value.bookName) was published since \(value.publishDate)")
    }
}

print("Book Details: \(swift5Cookbook)")

extension String.StringInterpolation {
    mutating func appendInterpolation(_ value: BookFormatted, dateformatterStyle: DateFormatter.Style) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = dateformatterStyle
        let dateString = dateFormatter.string(from: value.publishDate)
        appendInterpolation("\(value.bookName) was published since \(dateString)")
    }
}

print("Book Details: \(swift5Cookbook, dateformatterStyle: .medium)")
