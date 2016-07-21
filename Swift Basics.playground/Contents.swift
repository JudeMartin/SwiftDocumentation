//: Playground - noun: a place where people can play
// comment
/* multiline comment */

/* for the UI */
import UIKit
/* for the C libraries */
import Darwin

/* variables, Implicit Declaration */
var str = "Hello, playground" /* String */
var index = 0 /* Int */

/* variable, Explicit Declaration */
var str1: String = "Hello, Swift!"
var id: Int = 101
var width: Double = 20.0

/* constants,Implicit Declaration */
let pi = 3.141592
print("pi is equal to \(pi)")

/* constants, Explicit Declaration */
let numberOfSteps: Int = 450
let maxUnsignedInt: UInt64 = UIntMax.max

let isOver18 = true
let isNotOver18:Bool = true

//isNotOver18 = false /** cannot be changed, Since its let */

var isAllTheTime:Bool = true
isAllTheTime = false

let age = 26
var isLegelToVote: Bool  = (age > 18) ? true : false

/* range in switch */
let testScore = 97
switch testScore {
    case 90...99:
        print("You got an A grade", terminator:"")
    default:
        print("You got an F grade")
}

/* for loop, with the braces */
var sum = 0
/* exclude 4 -> 0,1,2,3 = 6 */
/* variant,1 */
for var i = 0; i < 4; i++ {
    sum += i
}
print(sum)
/* variant,2 */
sum = 0
for i in 0..<4{
    sum += i
}
print(sum)
/* include 4 -> 0,1,2,3,4 = 10 */
sum = 0
for i in 0...4{
    sum += i
}
print(sum)

/* function'
s in Swift */
func sayHello (firstName: String,lastName: String) -> String{
    return "Hello, \(firstName) \(lastName)!"
}
/* name the label only for the second parameter and not for the first one */
/* the below code will fail */
//print(sayHello(firstName: "Jude",lastName: "Martin"))

/* correct labelling format */
print(sayHello("Jude", lastName: "Martin"))

/* Optionals with the ? symbol */
var firstName: String
var lastName: String?

firstName = "Jude"
lastName = "Martin"

/* without force unwrapping */
print(firstName,lastName)
/* with force unwrapping ! symbol */
print(firstName,lastName!)
/* print the number of character's in the string, Force unwrap it and then builder { character and count } */
print(lastName!.characters.count)


/* declare an array of Int */
let count = 10
var squares = [Int]()
/* appned to the array */
for index in 0..<count{
    squares.append(index * index)
}
print(squares)

/* collection of fruits */
/* for in loop */
let fruits = ["lemon","banana","apple","mango"]
for fruit in fruits{
    if fruit == "mango"{
        print("Yay, it's a \(fruit)!")
    }
}

/* while loop */
let newCount = 10
var newSquares = [Int]()
var newIndex = 0
while index < count{
    squares.append(index * index)
    index++
}
print(squares)

/* do while == repeat while */
var latestIndex = 0
repeat {
    print("index is  \(latestIndex)")
    latestIndex++
}
while latestIndex < 3


/* Dictionary */
let interestingNumbers = [
    "Prime" : [2,3,5,7,11,13],
    "Fibonacci" : [1,1,2,3,5,8],
    "Square" : [1,4,9,16,25]
]
var largest = 0
for(kind, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print("The largest number is \(largest) in the Dictionary" )

var total = 0
for i in 0...4 {
    total += i
}
print(total)

func greet(person: String, day: String, date:Int,month: String) -> String{
  return "Hello \(person), today is \(day) the \(date)th of \(month)"
}
print(greet("Jude", day: "Tuesday", date:19, month:"July"))

class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
}
/* collections */
    /* Arrays */
var someInts = [Int]()
print("someInts is of type [Int] with a count of \(someInts.count) items.")
someInts.append(3)
print("someInts is of type [Int] with a count of \(someInts.count) items.")
var shoppingList: [String] = ["Eggs","Milk","Jam"]
print(shoppingList)
var shortHandShoppingList = ["Eggs","Milk"]
print(shortHandShoppingList)
if shortHandShoppingList.isEmpty {
    print("The shopping list is empty")
} else {
    print("The Shopping list is not empty")
}
// one way of adding elements to the Array
shortHandShoppingList.append("Butter")
// another way of adding elements to the array
shortHandShoppingList += ["Bread","Juice"]
print(shortHandShoppingList)
// insert at specified index
shoppingList.insert("cereal", atIndex: 0)
print(shoppingList)
//remove at specified index
shoppingList.removeAtIndex(0)
print(shoppingList)
// print all the elements in the list
for item in shoppingList {
    print(item)
}
    /* Set */
var favoriteGenres: Set = ["Heavy Metal","Rock","Pop","Acoustic"]
for genres in favoriteGenres.sort(){
    print(genres) // individually print the collection by iteration
}
print(favoriteGenres) // print the whole collection at once
//fundamental operations set: union, intersection, subtracting, symmetricDifference

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [2,4,6,8,10]
let singleDigitPrimeNumbers: Set = [2,3,5,7]

print(oddDigits.union(evenDigits).sort())
print(oddDigits.intersect(singleDigitPrimeNumbers).sort())
print(oddDigits.subtract(singleDigitPrimeNumbers).sort())
//print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

print(houseAnimals.isSubsetOf(farmAnimals))
print(farmAnimals.isDisjointWith(houseAnimals))
print(houseAnimals.isDisjointWith(cityAnimals))
