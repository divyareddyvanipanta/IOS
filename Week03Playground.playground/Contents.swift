import UIKit

var greeting = "Hello, playground"

var number:Int = 5
for index in 1...5 {
    print("\(index) * \(number) = \(index*number)")
}

//1 * 5 = 5
//2 * 5 = 10
//3 * 5 = 15
//4 * 5 = 20
//5 * 5 = 25

var totalNumbers = 100
var sum:Int = 0
for number in 1...totalNumbers {
    sum+=number
}
print("The sum of first \(totalNumbers) is \(sum)")

//The sum of first 100 is 5050

var coreLang =
["Java","Swift","Javascript","ASP.net","SQL"]
//In swift Array is declared using var arrayName=[]
for index in 0..<coreLang.count {
    print("\(coreLang[index])")
}

//Java
//Swift
//Javascript
//ASP.net
//SQL

var totalSum = 10
for val in 1...totalSum {
    if (val%2 == 0) {
        print("\(val)",terminator:",")
    }
}
print(" are all even numbers")

//2,4,6,8,10, are all even numbers

var member=true
var scratchCard=10
var count=0
for attempt in 1..<scratchCard {
    count+=1
    if member {
        if count>3 {
            print("You won \(scratchCard-2)$")
            count=0
            break
        }
        
    }else{
        if(count>8){
            print("You got \(scratchCard-8)$")
        }
        
    }
}

//You won 8$

var prodNumber:Int = 6
var product:Int = 1
print("The product of first \(prodNumber) numbers is", terminator:" ")
while prodNumber>0 {
    product*=prodNumber
    prodNumber-=1
}
print(product)
//The product of first 6 numbers is 720

var rangeValue:Int = 30
while rangeValue >= 1 {
    if rangeValue%3 == 0 {
        print("\(rangeValue)",terminator:" ")
    }
    rangeValue-=1
}
//30 27 24 21 18 15 12 9 6 3

var number1 = 1
repeat {
    print(number1,terminator:" ")
    number1 += 1
} while number1 <= 10

//1 2 3 4 5 6 7 8 9 10

var number2 = 3
repeat {
    print("Hello World!!")
    number2+=1
} while (number2 <= 2)
//Hello World!!
print()
var a=0
var b=10
while (b-2 > 0){
    b-=2
    while (a+2 < 10){
        a+=2
        if a==b {
            continue
        }
        print("(\(a),\(b) )",terminator:"")
    }
}
//(2,8 )(4,8 )(6,8 )

var d = 100;
while( d > 50 )
{
    d = d - 30
}
print(d)
if( d > 70 ){
    d-=20;
    
}
else{
    d+=35;
}
print(d);
//75


//strings-------------------------------------
var fact = "Swift is a type safe language"
var dev = "Development of Swift began in 2010"
var author = "Swift was created by Chris Lattner"

fact.count //29
fact += ", it has a better memory management"
dev.append(" by Apple")
author.lowercased()
author[author.startIndex] //S
author.index(before: author.endIndex) //String.Index
dev[dev.startIndex] //D
dev[dev.index(before: dev.endIndex)] //e
author[author.index(after: author.startIndex)] //w
author[author.index(author.startIndex,offsetBy: 5)] // ""
author[author.index(author.endIndex,offsetBy: -5)] //t
fact[fact.index(fact.endIndex,offsetBy: -4)] //m

var shoppingList = "The shopping list contains: "
var foodItems = "Cheese, Butter, Chocolate Spread"
var clothes = "Socks, T-shirts"

if clothes.hasPrefix("Socks") {
     print("The first item in clothes is socks")
}else{
    print("socks is not the first item in clothes")
}
//The first item in clothes is socks

print(foodItems.split(separator: ","))
//["Cheese", " Butter", " Chocolate Spread"]

if clothes.contains(",") {
print("Clothes contains more than one item")
}else{
    print("Clothes contain only one item")
}
//Clothes contains more than one item

foodItems[foodItems.startIndex..<foodItems.index(foodItems.endIndex,offsetBy: -7)]
//"Cheese, Butter, Chocolate"

shoppingList += foodItems[foodItems.index(foodItems.startIndex, offsetBy:8)..<foodItems.endIndex]
//"The shopping list contains: Butter, Chocolate Spread"

clothes.remove(at: clothes.firstIndex(of: "T")!)  //T
clothes.remove(at: clothes.firstIndex(of: "-")!) //-
print("\(shoppingList), \(clothes)") //The shopping list contains: Butter, Chocolate Spread, Socks, shirts

clothes.insert(contentsOf: ", Trousers", at: clothes.endIndex) //"Socks, shirts, Trousers"

var firstIndexOfR = shoppingList.index(after: shoppingList.firstIndex(of: "r")!)
print(shoppingList[..<firstIndexOfR])
//The shopping list contains: Butter


var course = "44643-Mobile Computing-iOS"
//Display only course number
var indexOfHyphen = course.firstIndex(of: "-")!
print(course[course.startIndex..<indexOfHyphen]) //44643

//Display only the title of character
var courseName = course[course.index(after:
indexOfHyphen)..<course.endIndex]
print(courseName) //Mobile Computing-iOS

//Display the first word of the title
var firstWord = courseName[..<courseName.firstIndex(of: " ")!]
print(firstWord) //Mobile


let password = "Demo@123"
let confirmPassword = "Demo@123"
if password == confirmPassword {
    print("Password matches")
}else{
    print("Passwords doesn't matches")
}
//Password matches

let currentYear = "2021"
var enteredYear = "2020"
if currentYear.elementsEqual(enteredYear) == true
{
    print("Entered year matches with current year")
}
else{
    print("Entered year does not match with current year")
}
//Entered year does not match with current year

var vehiclePoweredBy = "Diesel"
 if vehiclePoweredBy != "Electricity" {
 print("Vehicle is not eco-friendly")
 }else{
 print("Vehicle is eco-friendly")
 }
//Vehicle is not eco-friendly

let valueExpected = "SUCCESS"
var valueProvided = "success"
if valueExpected.caseInsensitiveCompare(valueProvided) == ComparisonResult.orderedSame{
print("Expected and provided values are of same status")
} else{
    print("Expected and provided values are of different status")
}
//Expected and provided values are of same status

let nameGiven = "Anthony Martial"
var enteredName = "ANTHONY MARTIAL"
if nameGiven.lowercased() == enteredName.lowercased(){
print("Entered name and given name matches with each other")
}else{
print("Entered name does not matches with the given name")
}
//Entered name and given name matches with each other

