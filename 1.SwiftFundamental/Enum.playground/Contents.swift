//: Playground - noun: a place where people can play

import UIKit

//Enumeration Syntax
//Không data type
enum CompassPoint {
    case north
    case south
    case east
    case west
}

//Có data type
enum Gender1 :String { // enum with type
    case male
    case female
}

//Có thể viết như vầy
enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}
enum Genres:Int{
    case One = 1001, Two = 2000, Three, Four, Five
}

// directionToHead đuược khởi tạo với 1 trong các gia trị của CompassPoint, cũng như nó là 1 CompassPoint, nó có thể truy cập tới các giá trị trong CompassPoint = đấu .
var directionToHead = CompassPoint.west
print(directionToHead)
directionToHead = .north
print(directionToHead)

// ta có thể match value của enum với câu lệnh switch
directionToHead = .south
switch directionToHead {
case .north:
    print("Lots of planets have a north")
case .south:
    print("Watch out for penguins")
case .east:
    print("Where the sun rises")
case .west:
    print("Where the skies are blue")
}


//Associated Values
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

// ta có thể tạo 1 variable mới và gắn cho nó 1 giá trị Barcode.upc voi kieu tuple
var productBarcode = Barcode.upc(8, 85909, 51226, 3)
print(productBarcode)
productBarcode = .qrCode("ABCDEFGHIJKLMNOP")
print(productBarcode)

switch productBarcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode): // profucCode ở đây là gía trị hiện tại của Barcode.qrCode (productBarcode)
    print("QR code: \(productCode).")
}

// Đoạn switch ở trên có thể viết ngắn lại như vầy cho ngắn
switch productBarcode {
case let .upc(numberSystem, manufacturer, product, check):
    print("UPC : \(numberSystem), \(manufacturer), \(product), \(check).")
case let .qrCode(productCode):
    print("QR code: \(productCode).")
}


//Raw,Hash Values
enum Gender :String {
    case male = "I am Male"
    case female
}

print(Gender.male) // prints “male”, se lấy value là key male
print(Gender.male.rawValue) // prints “I am male”, rawvalue là giá trị mà "male" đã đuược gán
print(Gender.female.hashValue) // prints 1, hashValue là index của nó trong enum, ở đây female ở ví trí thứ 1

// gan gia tri
if let genderMale = Gender(rawValue: "male"){ // không có rawValue nào là male nên genderMale sẽ là nil
    print("genderMale non nil")
}
print("genderMale nil")

