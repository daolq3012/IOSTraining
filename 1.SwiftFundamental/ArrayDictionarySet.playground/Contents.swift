//: Playground - noun: a place where people can play

import UIKit

//Array
// Tạo mảng
let oddNumbers = [1, 3, 5, 7, 9, 11, 13, 15]
var emptyDoubles: [Double] = []
var emptyFloats: Array<Float> = Array()
var digitCounts = Array(repeating: 1, count: 10)
print(digitCounts)

if oddNumbers.isEmpty {
    print("I don't know any odd numbers.")
} else {
    print("I know \(oddNumbers.count) odd numbers.")
}

//Truy cập tới mảng
var streets = ["Albemarle", "Brandywine", "Chesapeake"]

//Lấy theo index
print("giá trị ví trí thứ 1 trong mảng \(streets[1])")

for street in streets {
    print("\(street)") //in ra hết tất cả phần tử trong mảng
}
if let firstElement = oddNumbers.first, let lastElement = oddNumbers.last {
    // Nếu vị trí đầu, cuối không nil thì in ra
    print(firstElement, lastElement, separator: ", ")
}
//In ra giá trị ví trí 0 và 3
print(oddNumbers[0], oddNumbers[3], separator: ", ")

if streets.isEmpty {
    print("streets is nil")
} else {
    print("streets none nil")
}

//add 1 phần tử
streets.append("Maxime")
//add nhiều phần tử
streets.append(contentsOf: ["Shakia", "William"])
//add test vào bị trí thứ 3 trong mảng
streets.insert("test", at: 3)

//remove with index 1
streets.remove(at: 1)
//remove first
streets.removeFirst()
//remove last
streets.removeLast()

//replace
if let i = streets.index(of: "Maxime") {
    //nếu giá trị của Maxime != nill thì gắn lại nó = xax
    streets[i] = "Max"
}


//Dictionary giong Hash Map ben Java
var emptyDict: [String: String] = [:]
var interestingNumbers = ["primes": [2, 3, 5, 7, 11, 13, 15],
                          "triangular": [1, 3, 6, 10, 15, 21, 28],
                          "hexagonal": [1, 6, 15, 28, 45, 66, 91]]
// lay gi tri key primes
print(interestingNumbers["primes"]!)

// update Value at key name
var dict1  = ["name": "Nobitacnt", "age": "25", "city":"Hải Phòng"]
if let oldName = dict1.updateValue("Xuka", forKey: "name") {
    print("Tên cũ là \(oldName).")
}

// remove value at key name
if let removedValue = dict1.removeValue(forKey: "name") {
    print("Bạn vừa xóa tên \(removedValue).")
} else {
    print("Không tồn tại")
}

//Chi lay key
let dictKey = [String](dict1.keys)
print(dictKey)

// in ra tat ca cac gia tri theo key va value
for (key, value) in dict1 {
    print("key = '\(key)' is '\(value)'.")
}


//Set
//Tao bien set rong
var letters = Set<String>()
print("letters is of type Set<String> with \(letters.count) items.")

// Tao bien set voi 1 mang
var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
var favoriteGenres1: Set = ["Rock", "Classical", "Hip hop"]

// duyet cac phan tu trong mang
for genre in favoriteGenres {
    print("\(genre)")
}

// Truy cap set
print("so phan tu =  \(favoriteGenres.count)")
if favoriteGenres.isEmpty {
    print("empty")
} else {
    print("none empty.")
}

//insert
favoriteGenres.insert("a")
//remote at value a
favoriteGenres.remove("Rock")

if let removedGenre = favoriteGenres.remove("Rock") {
   print("Bạn vừa xóa tên \(removedGenre).")
} else {
    print("Không tồn tại")
}

if favoriteGenres.contains("Rock") {
    print("co chua Rock")
} else {
     print("Không chua Rock")
}

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

// ket hop
oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]



