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

