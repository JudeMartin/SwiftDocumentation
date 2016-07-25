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
// declaring an array
var shoppingList = ["Eggs","Milk","Butter","Jam"]
print(shoppingList) // print the whole array
print("The number of elements in the list are: \(shoppingList.count)")
for items in shoppingList { //iteratively print all the elements
    print(items) // in a new line
}

shoppingList += ["Sugar"] // adding the elements to the list
print(shoppingList)

shoppingList.append("Flour") //adding element to the list
print(shoppingList)

shoppingList.insert("Maple Syrup", at: 0) // add element at the index
print(shoppingList)
shoppingList.remove(at: 1)// remove element at the index
print(shoppingList)

    /* Sets */
var justiceLeague: Set = ["Batman","Superman","Flash","Wonderwoman","John"]
print(justiceLeague.sorted())// print in sorted order

for superHeros in justiceLeague {
    print(superHeros)
}

let evenDigits: Set = [2, 4, 6, 8, 10]
let oddDigits: Set = [1, 3, 5, 7, 9]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

// union, intersection, subtracting, symmetricDifference
print(oddDigits.union(evenDigits).sorted())
print(oddDigits.intersection(evenDigits).sorted())
print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())

let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

//subSet, superSet, Disjoint
print(houseAnimals.isSubset(of: farmAnimals))
print(farmAnimals.isSuperset(of: houseAnimals))
print(cityAnimals.isDisjoint(with: houseAnimals))

    /* Dictionary */
var airports = ["SFO":"San Francisco", "SJC":"San Jose", "FAT": "Fresno", "LAX":"Los Angeles"] // declare a Dictonary
print(airports)
print(airports["SFO"]) //get the value for the specified key

for (airportCode, airportName) in airports {
    print("\(airportCode) : \(airportName)") //print the key value pairs of the Dictionary
}

for airportCode in airports.keys { // get all the keys of the Dictionary
    print("The Keys of the Dictionary: \(airportCode)")
}

for airportName in airports.values { // get all the values of the dictionary
    print("The values in the dictionary are: \(airportName) ")
}
// Classes and Methods
class Counter {
    var counter = 0
    func inc() {
        counter += 1
    }
    func printCount() {
        print("The value of the counter \(counter)")
    }
    func add(n: Int) {
        counter += n;
    }
    func reset() {
        counter = 0
    }
}
var myCount = Counter()
myCount.printCount()
myCount.inc()
myCount.add(n: 9)
myCount.printCount()
myCount.reset()
myCount.printCount()