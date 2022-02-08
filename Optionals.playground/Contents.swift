import UIKit

var greeting = "Hello, playground"

var message: String?
message = "Hello World!"

//may contain a chance of force unwrapping
if message != nil {
    let messageBody = message!
    print(messageBody)
}

//no forced unwrapping in this case-----optional binding
if let messageBody = message {
    print(messageBody)
}
else {
    print("No message")
}

//nested optional binding
message = "24"
if let messageBody = message {
    if let messageInteger = Int(messageBody) {
        print("\(messageBody): \(messageInteger)")
    }
}
else {
    print("no message")
}

var msg:String! = nil
let msg1:String = msg
let msg2 = msg

var errorCodeString: String?
errorCodeString = "505"
var errorDescription: String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError),
   errorCodeInteger == 404 {
    errorDescription = "\(errorCodeInteger +  200) : resource not found"
}

var upcaseErrorDescription = errorDescription?.uppercased()
print(upcaseErrorDescription ?? "No error.")
