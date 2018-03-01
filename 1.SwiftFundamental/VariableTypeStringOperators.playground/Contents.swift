//: Playground - noun: a place where people can play

import UIKit

// Difference between let & var
let numberA:String = "a"
// numberA = "b" -> Error Becauses let is unmutable
// Let để khai báo hàng số (Unmutable), không thể thay đổi giá trị
var numberB: String = "b"
numberB = "c"
// Var để khai báo variable (Mutabble)

///Tuple là kiểu dữ liệu cho phép lưu trữ nhiêu dữ liệu trong 1 bien, các kiểu dữ liệu có thể # nhau
let tupleA = (10, "Gioi")
print("get value follow index, tupbleA = \(tupleA.0)") // lấy giá trị theo vị trí
let tupleB = (Int:10, String:"Gioi")
print("tupbleB = \(tupleB.String)")
let tupleC:(point:Int,rank:String) = (10,"Gioi")
print("tubpleC = \(tupleC.point)")
let tupleD = (point:10, rank:"Gioi")
print("tubpleC = \(tupleD.rank)")
let (point, rank) = tupleA
print("get value follow name, point = \(point)") // lấy giá trị theo ten

//Optional
let optional:String? // default la nil, Gia tri cua optionalInt co the la nil or kieu String, nhung gi sau nil se khong thuc thi -> khong crash ap
optional = nil // optional1 = nil
if optional == nil {
    print("optional is nil")
}

let optional2:String! // gia tri khong duoc nil, nil -> crash

let optional3: String? = "test1"
let optional4: String = optional3! // bat buoc phai co !
let optional5: String! = "test2"
let optional6: String = optional5 // khong can !
if optional5 != nil {
    print("optional5 non nil")
}
if let optional7 = optional5 { //neu optional5 non nil thi thuc thi gan no vao optional7
    print("optional7 = \(optional7)")
}

//Example ?
class Cat {
    func move() {}
}
class Dog {}
let animal:AnyObject = Cat()
let myCat = animal as? Cat
// myCat lúc này sẽ không nil do nó chính là đối tượng Cat chẳng qua ta dùng đối tượng cha wrap nó vào (UnWrap)

let myDog = animal as? Dog
// myDog lúc này sẽ là nil do biến animal không phải là đối tượng của class Dog

// Để kiểm tra 1 biến optional (?) có thực sự không bị nil hay không ta dùng:
if let actualCat = myCat {
    actualCat.move()
    //actualCat chắc chắn sẽ không bị nil nên ta không cần ? ngay sau nó)
}

//Example !
var mayBeNil:String? = nil
mayBeNil! // CRASH vì unwrap 1 biến optional đang là nil

// Ta dùng “!” khi chắc chắn rằng biến có “!” sẽ luôn luôn có giá trị. Ta có thể dùng khong can phai them ? phia sau no, day la Implicit Unwrap Optional.
// Nhung bien luôn có giá trị khởi tạo và không thay đổi thì ta có thể dùng “!” khoi phai wrap no, cũng như việc check nó xem có nil hay là không.
let neverNil2:String! = "None nil"
