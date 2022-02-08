import UIKit

var greeting: String = "Hello, playground"

var greet = "Hello"

print("Hii",10,12.25 , separator: "_")

var programmingLanguage = "Swift"
print("My favorite programming language is \(programmingLanguage)") //string interpolation
print("My favorite programming language is", programmingLanguage)

var age = 23
print("You are \(age) years old and in another \(age)years, you will be \(age * 2)")

print("""
Hello
World!
""") //paragraph

print ("Hello All,\rWelcome to Swift programming") //new line

let  welcomeMessage : String = "Hello!"
   print(welcomeMessage , "All")

print("Welcome to Swift Programming")
print("Fall 2021")
print("************")
print("Welcome to Swift Programming" , terminator : "-" )
print("Fall 2021")

print("The list of numbers are ")
print(1,2,3,4,5,6)
print("The new pattern is")
print(1,2,3,4,5,6, separator: "-")

//constants and variables
var mobileBrand = "Apple"
mobileBrand = "Samsung"
print(mobileBrand)

let pi = 3.14
print(pi)

var agee : Int = 23
agee = agee * 2
print(agee)

var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")

var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)

print(10,20,30)
print(12.5,15.5)

var movieRating = (movieName: "Tenet", rating: 3.15, year: 2020)

var httpError  = (errorCode : 404  , errorMessage : "PageNot Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )

var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)

var origin = (x : 0 , y : 0)
var point = origin
print(point)

let city = (name : "Maryville" , population : 11_000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)

let groceries = ("bread","onions")
print(groceries.0)
print(groceries.1)
print(type(of: groceries))

var fname = "Joe"
var lname = "Root"
(fname , lname) = (lname , fname)
print("First Name is \(fname) and Last Name is \(lname)")

var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)


!(5 <= 4 || 6 != 5 && 10 >= 4)

var four = 4
print(-four)

var  firstNumber : Int = 10
var secondNumber : Int = 25
print(secondNumber / firstNumber)


var number1 = (5,4)
var number2 = (4,5)
print(number1 <  number2 )

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


let stringExp = "3+5/2*6"

