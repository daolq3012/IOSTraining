//: Playground - noun: a place where people can play

import UIKit

//Giống
// Define property, method, subscripts
// Define constructer (init)
// Cho phép mở rộng func thông qua implement
// Cho phép thực hiện protocols ( em thống giống như interface bên java :v ) ( thực thi tất cả các method mà protocols đó có )

//Definition
struct Resolution {
    var width = 0
    var height = 0
}
class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

//Class and Structure Instances
let someResolution = Resolution()
let someVideoMode = VideoMode()

//Accessing Properties ( cái này giống java, cần truy cập object ở trong thì cứ . và gọi)
print("The width of someResolution is \(someResolution.width)")
print("The width of someVideoMode is \(someVideoMode.resolution.width)")

//Memberwise Initializers for Structure Types ( khởi tạo gia tri cho các variable có trong nó )
let vga = Resolution(width: 640, height: 480)
print(vga)

//Structures and Enumerations Are Value Types ( Giống bên enum )
let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")

// Nếu dùng enum cho phần trên
enum CompassPoint {
    case north, south, east, west
}
var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection = .east
if rememberedDirection == .west {
    print("The remembered direction is still .west")
}

//Classes Are Reference Types ( Tham chiếu tới và gắn giá trị mới, ko phải copy) ( Chỉ class mới có )
let tenEighty = VideoMode()
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
//frameRate đã đuược gắn giá trị mới là 30.0
print("The frameRate property of tenEighty is now \(tenEighty.frameRate)")

//Identity Operators ( Chỉ class mới có )
if tenEighty === alsoTenEighty { // Vì 2 cái cùng tham chiếu tới instacne của VideoMode
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance.")
}

//Inheritance ( Chỉ class mới có )
class Vehicle{
    var manufacturer: String?
    let passengerCapacity: Int
    
    init(passengerCapacity: Int) {
        self.passengerCapacity = passengerCapacity
    }
}
class Car: Vehicle {
    var fuelType: String?
}
let car = Car(passengerCapacity: 4)


//Deinitializer (Chỉ class mới có )
class D {
    deinit {
        //Deallocated from the heap, tear down things here
        print("Deallocated from the heap")
    }
}

var d:D? = D()
d = nil //Deallocated from the heap

// Dùng struct khi
// Cấu trúc dữ liệu đơn giản, có ít thuộc tính
// Những dữ liệu được đóng gói sẽ được copy hơn là tham chiếu khi bạn gán hay truyền instance của struct đó.
// Những thuộc tính được lưu trữ bởi struct thì bản thân nó là kiểu giá trị.
// Struct không cần thừa kế thuộc tính hay hành vi từ bất kì kiểu khác.


