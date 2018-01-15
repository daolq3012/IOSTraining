//: Playground - noun: a place where people can play

import UIKit

//Function có name, func, không có in
//Closure la func không có name, không có tu khoa func, có in
//cu phap
//    { ( parameters ) -> return type in
//      code
//    }

func sayHello(name: String) -> String {
    return "Hello \(name)"
}
//1 func thanh 1 bien closure
var sayHello1 = { (name: String) -> String in
    return "Hello \(name)"
}
print(sayHello1("test"))

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
var reversedNames = names.sorted(by: backward)
print("dao nguoc mang: \(reversedNames)")

//Doan function tren convert thanh
reversedNames = names.sorted(by: { (s1: String, s2: String) -> Bool in
    return s1 > s2
})
print("dao nguoc mang: \(reversedNames)")

//Hoac co the nhu vay
reversedNames = names.sorted(by: { s1, s2 in return s1 > s2 } )
print("dao nguoc mang: \(reversedNames)")

//Hoac co the nhu vay (best)
reversedNames = names.sorted(by: { $0 > $1 } )
print("dao nguoc mang: \(reversedNames)")

