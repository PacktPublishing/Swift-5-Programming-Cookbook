import UIKit

// 1. Create an Empty Array
var someStrings = [String]()
print("someStrings is of type [String] with \(someStrings.count) items.")
// Prints "someStrings is of type [String] with 0 items."

someStrings = []
// someStrings is now an empty array, but is still of type [String]

// 2. Create and Array with Default Values
var threeInts = Array(repeating: 2, count: 3)
// threeInts is of type [Int], and equals [2, 2, 2]

// 3. Create an Array by Adding Two Arrays Together
var anotherThreeInts = Array(repeating: 3, count: 3)
// anotherThreeInts is of type [Int], and equals [3, 3, 3]

var sixInts = threeInts + anotherThreeInts
// sixDoubles is inferred as [Int], and equals [2, 2, 2, 3, 3, 3]

// 4. Create an Array with an Array Literal
var packingList: [String] = ["Shirt", "Jacket"]
// packingList has been initialized with two initial items

// Accessing and Modifying an Array

// 5. Counting Array
print("The packing list contains \(packingList.count) items.")
// Prints "The packing list contains 2 items."

// 6. Check Empty Array
if packingList.isEmpty {
    print("The packing list is empty.")
} else {
    print("The packing list is not empty.")
}
// Prints "The packing list is not empty."

// 7. Add new item to end of Array
packingList.append("Pant")
// shoppingList now contains 3 items, and someone is planning for vacation

// 8. Assignment Operator (+=)
packingList += ["Sunglasses"]
// packingList now contains 4 items
packingList += ["Sports Shoes", "Socks", "T-Shirt"]
// packingList now contains 7 items

// 9. Get Array value using subscript syntax
var firstItem = packingList[0]
// firstItem is equal to "Shirt"

// NOTE
// Arrays in Swift always starts with zero index. So the first item of an array has an index 0, not 1.

// 10. Modify Array value using subscript
packingList[0] = "Long-sleeved Shirt"
// the first item in the list is now equal to "Long-sleeved Shirt" rather than "Shirt"

// 11. Modify Array values using Range subscript syntax
packingList[4...6] = ["Umbrella", "Hat"]
// packingList now contains 6 items

// 12. Add new value at specified index
packingList.insert("Sweater", at: 0)
// packingList now contains 7 items
// "Sweater" is now the first item in the list

// 13. Remove value Array at specified index
let sweater = packingList.remove(at: 0)
// the item that was at index 0 has just been removed
// packingList now contains 6 items, and no Sweater
// the sweater constant is now equal to the removed "Sweater" string

firstItem = packingList[0]
// firstItem is now equal to "Long-sleeved Shirt"

// 14. Remove last value of array
let hat = packingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the hat constant is now equal to the removed "hat" string

// 15. Check for item exist in Array
if packingList.contains("Jacket") {
    print("It's too cold over here.")
} else {
    print("It's too hot over here.")
}
// Prints "It's too cold over here."

// There's more...

// Iterating Over an Array

for item in packingList {
    print(item)
}
// Long-sleeved Shirt
// Jacket
// Pant
// Sunglasses
// Umbrella

for (index, value) in packingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Long-sleeved Shirt
// Item 2: Jacket
// Item 3: Pant
// Item 4: Sunglasses
// Item 5: Umbrella
