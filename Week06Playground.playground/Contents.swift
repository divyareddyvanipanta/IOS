import UIKit
import os
import Foundation

var greeting = "Hello, playground"

//let numbers = [1244, 2022, 2157]
//let sum = numbers.reduce(0) {
//    (initialResult: Int, num: Int) -> Int in
//    return initialResult + num
//}
//let sum = numbers.reduce(0) {$0 + $1}
//print(sum)


//Arrays
var numbers:[Int] = [2,3,4]
print(numbers)//[2, 3, 4]

var emptyArray = [Int]()
print(emptyArray)//[]

//var programmingLanguages = ["Swift", "Java", "Python"]
//print(programmingLanguages[0])//Swift

var programmingLanguages = ["Swift", "Java", "Python"]
programmingLanguages[0] = "Java Script"
print(programmingLanguages[0])//Java Script

var names:[String] = ["Oliver", "Elijah", "James"]

print("Before appending \(names)")
names.append("Masthan")
print("After appending \(names)")
//Before appending ["Oliver", "Elijah", "James"]
//After appending ["Oliver", "Elijah", "James", "Masthan"]

print("Before inserting \(names)")
names.insert("Benjamin", at: 2)
print("After inserting \(names)")
//Before inserting ["Oliver", "Elijah", "James", "Masthan"]
//After inserting ["Oliver", "Elijah", "Benjamin", "James", "Masthan"]

print(names.count)//5

names.sort()
print("After sorting \(names)")//After sorting ["Benjamin", "Elijah", "James", "Masthan", "Oliver"]

names.reverse()
print("After reversing \(names)")//After reversing ["Oliver", "Masthan", "James", "Elijah", "Benjamin"]

names.remove(at: 2)
print("After removing \(names)")//After removing ["Oliver", "Masthan", "Elijah", "Benjamin"]

names.swapAt(1, 2)
print("After swapping \(names)")//After swapping ["Oliver", "Elijah", "Masthan", "Benjamin"]

var oddNumbers = [1,3,5,7]
var evenNumbers = [2,4,6,8]
oddNumbers.append(contentsOf: evenNumbers)
print("After combining \(oddNumbers)")//After combining [1, 3, 5, 7, 2, 4, 6, 8]


//closures
let volunteerCount = [1, 3, 40, 32, 2, 53, 77, 13]
//let volunteerSorted = volunteerCount.sorted(by: {
//    (i: Int, j: Int) -> Bool in
//    return i < j
//})
let volunteerSorted = volunteerCount.sorted{$0 < $1}
print(volunteerSorted)//[1, 2, 3, 13, 32, 40, 53, 77]

var weather = "its cold"
weather.append("in sdjhf")
print(weather.startIndex)

var c = "us"
let p = {
    print("\(c) is mine")
    
}
c="ind"
p()


