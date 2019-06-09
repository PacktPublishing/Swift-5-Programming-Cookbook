import UIKit

// 1. Create an Empty Set
var numbers = Set<Int>()
print("numbers is of type Set<Int> with \(numbers.count) items.")
// Prints "numbers is of type Set<Int> with 0 items."

numbers = []
// numbers is now an empty set, but is still of type Set<Int>

// 2. Create a Set with an Array Literal
var packingList: Set<String> = ["Shirt", "Jacket", "T-Shirt"]
// packingList has been initialized with three initial items

var packingLists: Set = ["Shirt", "Jacket", "T-Shirt"]
// packingList and packingLists both are same

// 3. Couting Set
print("I have \(packingList.count) things to pack for my trip.")
// Prints "I have 3 things to pack for my trip."

// 4. Check Empty Set
if packingList.isEmpty {
    print("The packing list is empty.")
} else {
    print("The packing list is not empty.")
}
// Prints "The packing list is not empty."

// 5. Add new item to Set
packingList.insert("Pant")
// packingList now contains 4 items

// 6. Remove item from Set
if let removedShirt = packingList.remove("Shirt") {
    print("\(removedShirt)? I'm over it.")
} else {
    print("I like T-Shirts!")
}
// Prints "Shirt? I'm over it."

// 7. Check for item exist in Set
if packingList.contains("Jacket") {
    print("It's too cold over here.")
} else {
    print("It's too hot over here.")
}
// Prints "It's too cold over here."

// There's more...

// Iterating Over a Set
for item in packingList {
    print("\(item)")
}
// Pant
// T-Shirt
// Jacket

for sortedItem in packingList.sorted() {
    print("\(sortedItem)")
}
// Jacket
// Pant
// T-Shirt
