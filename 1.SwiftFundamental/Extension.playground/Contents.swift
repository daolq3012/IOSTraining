//: Playground - noun: a place where people can play

import UIKit

//Computed Properties (
extension Double {
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}
let oneInch = 25.4.mm
print("One inch is \(oneInch) meters")
let threeFeet = 3.ft
print("Three feet is \(threeFeet) meters")
let aMarathon = 42.km + 195.m
print("A marathon is \(aMarathon) meters long")

//Initializers
struct Size {
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
}
let defaultRect = Rect()
let memberwiseRect = Rect(origin: Point(x: 2.0, y: 2.0),
                          size: Size(width: 5.0, height: 5.0))

extension Rect { // ta có mở rộng Rect thông qua method init
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}
let centerRect = Rect(center: Point(x: 4.0, y: 4.0),
                      size: Size(width: 3.0, height: 3.0))
print(centerRect.origin.x)

//Methods
extension Int {
    func repetitions(task: () -> Void) { //hàm không có tham số truyền vào và ko có giá trị trả về
        for _ in 0..<self {
            task()
        }
    }
}

3.repetitions { // Số lần lặp lại của method repetitions()
    print("Hello!")
}

//Mutating Instance Methods
extension Int {
    mutating func square() {
        self = self * self
    }
}
var someInt = 3
someInt.square()
print(someInt) // print 9


//Subscripts
extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
        for _ in 0..<digitIndex {
            decimalBase *= 10
        }
        return (self / decimalBase) % 10
    }
}
746381295[0] //sẽ trả giá trị index = 0, chạy từ phải sang trái
// returns 5
746381295[1]
// returns 9


//Nested Types ( có thể lồng các class, struct, enum với nhau
extension Int {
    enum Kind {
        case negative, zero, positive
    }
    var kind: Kind {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .positive
        default:
            return .negative
        }
    }
}

