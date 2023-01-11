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
// MARK: - Arithmetic operator
let first = 10
let second = 3

let sum = first + second
let diff = first - second

let multiple = first * second
let divided = first / second

let remainder = first % second

// MARK: - Operator overloading
let str1 = "aaa"
let str2 = "bbb"

let str = str1 + str2 // "aaabbb"

let names1 = ["April", "Bob"]
let names2 = ["Chuck", "David"]

let names = names1 + names2 // ["April", "Bob", "Chuck", "David"]

// MARK: - Compound operator
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

// MARK: - Comparison operator
let score1 = 6
let score2 = 4

score1 == score2 // false
score1 != score2 // true

score1 > score2 // true
score1 >= score2 // true

score1 < score2 // false

// MARK: - Conditions
let num1 = 3
let num2 = 5

let conditionsSum = num1 + num2

if conditionsSum > 10 {
    print("over 10")
} else {
    print("not over 10")
}

// MARK: - Combining conditions
let age1 = 15
let age2 = 25

if age1 > 19 && age2 > 19 {
    print("19세 이상 영화를 같이 볼수 있겠네요")
}

if age1 > 20 || age2 > 20 {
    print("20세 이상 보호자가 있으면 놀이공원에 들어갈수 있어요")
}

// MARK: - Ternary operator
let age3 = 30
let age4 = 40
let text = age3 == age4 ? "same" : "not same"

// MARK: - Loops
// MARK: - Repeat-while: 코드실행 -> 조건체크 <> (While: 조건체크 -> 코드실행)
var repeatNum = 1

repeat {
    print(repeatNum)
    repeatNum += 1
} while repeatNum <= 20

print("조건을 더 이상 만족하지 않아서, 탈출")

// MARK: - Function
// MARK: - Variadic function
func printNames(_ names: String...) {
    for name in names {
        print("name is \(name)")
    }
}

printNames("James", "Roy", "Jake")
// name is James
// name is Roy
// name is Jake

// MARK: - Throwing Function
enum DivideError: Error {
    case cannotZero
}

func divide(dividend: Int, divisor: Int) throws -> Int {
    if divisor == 0 {
        throw DivideError.cannotZero
    }
    
    return Int(dividend / divisor)
}


do {
    let result = try divide(dividend: 80, divisor: 6)
    // let result = try divide(dividend: 80, divisor: 0)
    print(result)
} catch {
    print(error.localizedDescription)
}

// MARK: - In-Out parameter
func makeTriple(num: inout Int) {
    num *= 3
}

var num = 8
makeTriple(num: &num)

print(num)


