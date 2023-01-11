import UIKit

// MARK: - Tuple
var human = (name: "nello", age: 31)
var company = [(name: String, age: Int)]()
company.append(("test name 1", 15))
company.append(("test name 2", 34))
company.append(("test name 3", 56))

// MARK: - Enum
// associated value
enum ComType {
    case social(String)
    case IT(Int)
}

var myCom1: ComType = .social("apple")
let myCom2 = ComType.IT(5)

// type
enum MyDataType: Int {
    case low
    case mid
    case high
}

let data1 = MyDataType(rawValue: 0)
let data2 = MyDataType(rawValue: 1)

enum MasterLevel: Int {
    case beginner
    case intermediate
    case professional
}

let pro = MasterLevel(rawValue: 2)
let otherLevel = MasterLevel(rawValue: 5) // -> nil

enum Direction: String {
    case up
    case down = "downValue"
    case left = "left"
}

let up = Direction(rawValue: "up") // -> up
let down = Direction(rawValue: "downValue") // -> down
let otherDirection = Direction(rawValue: "right") // -> nil

// MARK: - Operator
// MARK: - arithmetic operator
let first = 10
let second = 3

let sum = first + second
let diff = first - second

let multiple = first * second
let divided = first / second

let remainder = first % second

// MARK: - operator overloading
let str1 = "aaa"
let str2 = "bbb"

let str = str1 + str2 // "aaabbb"

let names1 = ["April", "Bob"]
let names2 = ["Chuck", "David"]

let names = names1 + names2 // ["April", "Bob", "Chuck", "David"]

// MARK: - compound operator
var price1 = 10
price1 += 1 // 11

var price2 = 20
price2 -= 5 // 15

var price3 = 30
price3 *= 3 // 90

var price4 = 40
price4 /= 2 // 20


var quote = "Hello, Swift "
quote += "Playgrounds" // "Hello, Swift Playgrounds"

// MARK: - comparison operator
let score1 = 6
let score2 = 4

score1 == score2 // false
score1 != score2 // true

score1 > score2 // true
score1 >= score2 // true

score1 < score2 // false


