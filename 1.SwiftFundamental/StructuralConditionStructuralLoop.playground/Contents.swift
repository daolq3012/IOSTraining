//: Playground - noun: a place where people can play

import UIKit

//Understand about if, else, if let, guard let
var t: Int?
if t == nil {
    print("t nil")
}
else{
    print("value nil t = \(t!)")
}

//toan tu 3 ngoi
var n1:Int = 1;
var n2:Int = 2;
var max:Int;
max = n1 >= n2 ? n1 : n2;
print("Giá trị lớn nhất là \(max)");

//switch
var index:Int = 10
switch index { //thuc hien xong 1 khoi lenh cua case se tu dung, ko can break nhu java
case 10 :
    print("Giá trị của index là 10")
case 10...15 :
    print("Giá trị của index là tu 10 - 15")
default :
    break
}

//switch,fallthrough
var index1:Int = 10
switch index1 { //fallthrough se giup tip tuc lenh ma ko can kiem tra khop lenh, sẽ in ra luôn dòng dưới
case 10 :
    print("Giá trị của index là 10")
    fallthrough
case 10...15 :
    print("Giá trị của index là tu 10 - 15")
default :
   break
}

//swith where
var index2:Int = 10
switch index2 {
case 10 where index2 % 2 == 0: //kết hợp với where, ngon hơn java :v
    print("Giá trị của index là 10")
case 10...15 :
    print("Giá trị của index là tu 10 - 15")
default :
    print("Không xác định")
}

// if let
var possibleIntegerValue: Int?
if let integerValue = possibleIntegerValue { // Neu possibleIntegerValue != nil thì thực thi
    print("integerValue =  \(integerValue).")
} else {
    print("nil")
}

// Guard let
let a:Int?
a = 40
func doSomething(passedA:Int?) {
    guard let b = passedA else { // if passedA = nil
        // neu sai thi lam gi
        print("do some thing else")
        return
    }
    //nguoc lai neu passedA != nil thi gan b = passedA
    print (b) // prints 40

}
doSomething(passedA: a)

//More ways using loop for by Swift
//For su dung so lan lap da biet truoc, mỗi lần lặp trả về position với value của nó
for i in 0...2 {  // Dạng x...y
    print("Index:", i)
}
for i in 0..<2 {  // Dạng x..<y
    print("Index:", i)
}
let names = ["Le", "Tuan", "Leo", "Hulk"]
for name in names { // Dạng Array
    print("Name: ", name)
}
for name in names[2...] { // Dạng Array[index...]
    print("Name:", name)
}
for name in names[...2] { // Dạng Array[...index]
    print("Name:", name)
}
for name in names[..<2] { // Dạng Array[..<index]
    print("Name:", name)
}
for i in stride(from: 1, to: 10, by: 2) { // Dạng stride + , tu 1->10 tang 2 moi lan
    print(i)
}
for i in stride(from: 10, to: 1, by: -2) { // Dạng stride - , tu 10 -> 1 tru moi lan
    print(i)
}
for _ in 1...3 { // Dạng '_' in ra 3 lan giong nhaunhất    print("Hello World")
}
names.forEach { name in  // Dạng Array forEach
    print("Name:", name)
}


//while sử dụng số lần lặp không biết trước, thực thi cho đến 1 điều kiện false, chỉ co 1 điều kiện duy thất
var indexWhite = 10
while indexWhite < 15 {  // chay tu 11 toi 14  >indexWhite && <15
    print( "Value of indexWhite is \(indexWhite)")
    indexWhite = indexWhite + 1
}

