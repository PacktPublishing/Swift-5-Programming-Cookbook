import UIKit

// 1 - Creating tuple
let http200Status = (200, "Ok")
let (code, message) = http200Status
print("The status code is \(code)")
print("The status message is \(message)")

// 2 - Ignore the other parts of tuple with underscore(_)
let (onlyCode, _) = http200Status
print("The status code is \(onlyCode)")

let (_, onlyMessage) = http200Status
print("The status message is \(onlyMessage)")

// 3 - Access tuple using index value
let fullName = ("Naeem", "Shaikh")
let firstName = fullName.0
let lastName = fullName.1
print("The firstName is \(firstName)")
print("The lastName is \(lastName)")

// 4 - Creating tuple using name or label
var location = (latitude: 48.8584, longitude: 2.2945) // Eiffel Tower - Coordinates
location.latitude
location.longitude
print("Eiffel Tower latitude is \(location.latitude)")
print("Eiffel Tower longitude is \(location.longitude)")

// 5 - Reassign values to tuple using same name or label
location = (latitude: 40.6892, longitude: 74.0445) // Statue of Liberty National Monument - Coordinates
print("Statue of Liberty latitude, longitude is \(location)")

// 6 - Reassign values to tuple without name or label (names are inferred)
location = (43.7230, 10.3966) // Leaning Tower of Pisa - Coordinates
print("Leaning Tower of Pisa latitude, longitude is \(location)")

// 7 - Cannot assign values using different name or label
// location = (xAxis: 51.5007, yAxis: 0.1246) // Big Ben - Coordinates
// Error: Cannot assign value of type '(xAxis: Double, yAxis: Double)' to type '(latitude: Double, longitude: Double)'

// 8 - Creating Nested Tuples
let person = (age: 28, name: (firstName: "Naeem", lastName: "Shaikh"))
print(person.age)
print(person.name.firstName)
print(person.name.lastName)

// 9 - Compare Tuples
let xOrigin = (10, 20)
let yOrigin = (30, 40)

if xOrigin == yOrigin {
    print("Matching tuples!")
} else {
    print("Non-matching tuples!")
}

// It only compare values not the names or labels
let xOriginWithName = (start: 10, end: 20)

if xOrigin == xOriginWithName {
    print("Matching tuples!")
} else {
    print("Non-matching tuples!")
}

// 10 - Creating tuple using typealis
typealias Monument = (placeName: String, website: String, reviews: (starsRating: Float, totalReviewsCount: Int))
let statueOfLiberty: Monument = ("Statue of Liberty National Monument", "https://www.nps.gov/stli/index.htm", (4.6, 44_499))
print(statueOfLiberty)

// There's more...

// Creating tuple with multiple values
let extremeTupleExample = (
    placeName: "Eiffel Tower",
    website: "https://www.toureiffel.paris/en",
    reviews: (
        starsRating: 4.6,
        totalReviewsCount: 1_36_294
    ),
    description: (
        short: "Tower in Paris, France",
        long: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Wikipedia"
    ),
    address: "Champ de Mars, 5 Avenue Anatole France, 75007 Paris, France",
    constructionStarted: "28 January 1887",
    height:
        (value: 300, unit: "meter"),
        (value: 324, unit: "meter", description: "to tip"),
    openHours:
        (day: "Sunday", time: "9:30AM - 11:45PM"),
        (day: "Monday", time: "9:30AM - 11:45PM"),
        (day: "Tuesday", time: "9:30AM - 11:45PM"),
        (day: "Wednesday", time: "9:30AM - 11:45PM"),
        (day: "Thursday", time: "9:30AM - 11:45PM"),
        (day: "Friday", time: "9:30AM - 11:45PM"),
        (day: "Saturday", time: "9:30AM - 11:45PM"),
    foundedYear: 1887,
    didYouKnow: "In 1902, a lightning strike damaged the upper section of the Eiffel Tower, requiring the reconstruction of its top. factslides.com")
print(extremeTupleExample)
