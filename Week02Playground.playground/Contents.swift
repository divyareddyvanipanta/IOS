import UIKit

var greeting = "Hello, playground"

print("Hii",10,12.25) //Hii 10 12.25

var programmingLanguage = "Swift"
print("My favorite programming language is \(programmingLanguage)") //My favorite programming language is Swift

var age = 23
print("You are \(age) years old and in another \(age) years, you will be \(age * 2)") //You are 23 years old and in another 23 years, you will be 46

print("""
Hello
World!
""")
//Hello
//World!

print ("Hello All,\rWelcome to Swift programming")
//Hello All,
//Welcome to Swift programming

let  welcomeMessage : String = "Hello!"
   print(welcomeMessage , "All")
//Hello! All

print("Welcome to Swift Programming")
print("Fall 2021")
print("************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")
//Welcome to Swift Programming
//Fall 2021
//************
//Welcome to Swift Programming-Fall 2021

print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")
//The list of numbers are
//1 2 3 4 5 6
//The new pattern is
//1-2-3-4-5-6

var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand) //Samsung

let pi = 3.14
print(pi) //3.14

var age1 : Int = 23
age1 = age1 * 2
print(age1) //46

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")
//This is Superb!
//aweMessage

var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)
//iOS Java
//iOS - Java

print(10,20,30)
print(12.5,15.5)
//10 20 30
//12.5 15.5


//tuples------------------------------
var httpError  = (errorCode : 404  , errorMessage : "Page Not Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
//(errorCode: 404, errorMessage: "Page Not Found")
//404: Page Not Found

var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)
//John,Smith

var origin = (x : 0 , y : 0)
var point = origin
print(point) //(x: 0, y: 0)

let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)
//Maryville
//11

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))
//bread
//onions
//(String, String)

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")
//First Name is Root and Last Name is Joe

var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
//handGloves
//helmet
//bat
//ball

var  firstNumber : Int = 10
var secondNumber : Int = 25
print(secondNumber / firstNumber) //2

var four = 4
var finalNumber = -four
print(finalNumber) //-4

var number1 = (3,4)
var number2 = (4,5)
print(number1 <  number2 ) //true

var marks=45
if marks > 50 {
print("The student  had passed  with  \(marks) marks")
}else{
print("The student had managed to get \(marks) marks")
}
//The student had managed to get 45 marks

var inputNumber = -10
if inputNumber>0 {
    print("\(inputNumber) is a positive number.")
}else if (inputNumber<0){
    print("\(inputNumber) is a negative number")
    if(inputNumber%2==0){
        print("\(inputNumber) is a negative even number")
    }
}else {
    print("The number  is 0")
}
//-10 is a negative number
//-10 is a negative even number

var stars = 65
if(stars>=90) {
print("You are a Pro Member")
}
else if (stars>=78 && stars<90){
print("You are a Gold Member")
}
else if (stars>=65 && stars<78) {
print("You are a VIP Member")
}
else {
print("Default Plan")
}
//You are a VIP Member

var password:String="stephen@171"
if(password.count>8){
    if(password.contains(" ")){
       print("Password Should not contain space")
    }
    else{
    print("Password is Strong")
    }
}
else
{
   print("A password should be minimum of 8 characters")
   }
//Password is Strong


var male:Bool=false
var agee = 45
if male {
    if agee<20 {
        print("BOY")
    }else {
        print("MAN")
    }
}else{
    if agee<20{
        print("Girl")
    }else{
        print("Woman")
    }
}
//Woman


let alphabet:Character="a"
switch alphabet {
case "a","A":
print("It is alphabet a or A")
case "b":
print("It is lower alphabet b")
case "C":
print("It is upper case alphabet C")
default:
print("None of the cases are executed above")
}
//It is alphabet a or A

let isVowel:Character="e"
switch isVowel {
case "a","e","i","o","u":
print("The alphabet is a lower case vowel")
case "A","E","I","O","U":
    print("The alphabet is an upper case vowel")
default:
print("The alphabet is a consonant")
}
//The alphabet is a lower case vowel

let isHot:Double = -10.0
switch isHot {
case 60...95:
print("It's really warm. Don't forget to wear sunscreen.")
case 35...60:
    print("It's not that cold. Wear a t-shirt.")
case ..<35:
    print("It's very cold. Consider wearing a scarf.")
default:
print("The temperature is Unbearable")
}
//It's very cold. Consider wearing a scarf.

var x:Int=3
var y:Int=4
var z:Int=5
switch x {
    case 5:
        print("\(z)~",terminator:"")
    case 3:
        print("\(x)~",terminator:"")
        switch y {
            case 3:
                print("\(x)~",terminator:"")
            case 4:
                print("\(y)~",terminator:"")
                switch z {
                    case 5:
                        print("\(z)~",terminator:"")
                    case 4:
                        print("\(y)~",terminator:"")
                    default:
                         print("No Matching case found")
                }
            default:
                print("No Matching Case  found")
        }
    default:
        print("No number is matching")
}
//3~4~5~

for i in 0...10 {
    if i.isMultiple(of: 2) {
        print("hello")
    }
}
