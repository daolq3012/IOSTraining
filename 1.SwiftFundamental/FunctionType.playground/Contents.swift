//: Playground - noun: a place where people can play

import UIKit

func printHelloWorld() {
    print("hello, world")
}

//tra về kiểu int
func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
printHelloWorld()
addTwoInts(2, 3)

//Func có thể gắn bằng 1 biến
var mathFunction: (Int, Int) -> Int = addTwoInts
print("Result: \(mathFunction(2, 3))")
let anotherMathFunction = addTwoInts
print("Result: \(anotherMathFunction(2,3))")

//Ta có thể dùng func như 1 tham số cho func #
func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result: \(mathFunction(a, b))")
}
printMathResult(addTwoInts, 3, 5)

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    //Hàm lồng nhau
    func stepForward(input: Int) -> Int { return input + 1 }
    func stepBackward(input: Int) -> Int { return input - 1 }
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = chooseStepFunction(backward: currentValue > 0) //neu currentValue backward = true, nguoc lai

while currentValue != 0 {
    currentValue = moveNearerToZero(currentValue) //
    print("\(currentValue)... ")
}

//Map
func map(_ value: Int, transform: (Int) -> Int) -> Int {
    return transform(value)
}
map(10) { value in
    return value * value
}
map(10) { (value) -> Int in
    return value / 2
}

// Su dung voi Generics
func map<T>(_ value: T, transform: (T) -> T) -> T {
    return transform(value)
}
map("a") { (value) in
    return value + "b"
}

//Variadic Parameters
//Một variadic parameter chấp nhận không hoặc nhiều giá trị cho tham số.
func avg(numbers: Int...) -> Int {
    var total: Int = 0
    for n in numbers {
        total += n
    }
    return total / Int(numbers.count)
}
print(avg(numbers: 1, 2, 3, 4, 10))

//Tham số của hàm mặc định là hằng số, nếu thay đổi giá trị của nó bên trong hàm thì -> lỗi

var a = 10
var b = 17
//Ham swap
swap(&a, &b)
print("a = \(a), b = \(b)")


