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
