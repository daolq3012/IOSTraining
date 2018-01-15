//: Playground - noun: a place where people can play

import UIKit

// Class con kế thừa mọi method, property của class cha
// Defining a Base Class ( Class cha )
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}

//Subclassing ( Class con kế thừa từ class cha )
class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.currentSpeed = 15.0 // truy cập varible currentSpeed từ lớp cha
print("Bicycle: \(bicycle.currentSpeed)")

//Overriding kế thừa từ lớp cha và có thể custom lại

//Overriding Methods
class Train: Vehicle {
    override func makeNoise() { //ghi de method makeNoise va in ra
        print("Choo Choo")
    }
}
let train = Train()
train.makeNoise()

//Overriding Properties ( thong qua getter, setter giong java )

//Overriding Property Getters and Setters
class Car: Vehicle {
    var gear = 1
    override var description: String { // gán giá trị mới cho decsription
        return super.description + " in gear \(gear)" // sẽ lấy giá trị cũ + giá "text"
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

//Overriding Property Observers
class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet { // nó sẽ quan sát các variable ở trong và update lại value khi có thay đổi
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}
let automatic = AutomaticCar()
automatic.currentSpeed = 35.0
print("AutomaticCar: \(automatic.description)")


