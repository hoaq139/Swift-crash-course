import Foundation

let myAge = 22
let yourAge = 20

if myAge > yourAge{
    "I'm older than you"
}else if myAge < yourAge{
    "I'm younger than you"
}else{
    "We are the same age"
}

let myMothersAge = myAge + 30
let doubleMyAge = myAge * 2

////1. unary prefix: toán tử tiền tố một ngôi VD: -5
let foo = !true // !
///2. unary postfix: toán tử hậu tố một ngôi VD: x++
let name = Optional("Hoaq")
type(of: name)
let unaryPostFix = name!
type(of: unaryPostFix)
///3. binary infix: toán tử trung tố hai ngôi VD 5 +3
let result = 1 + 2
let names = "Foo" + " " + "Bar"



let age = 30
//let message: String
//if age >= 18{
//    message = "You are an adult"
//}else{
//    message = "You are not yet an adult"
//}
//let message = CONDITION
//? VALUE IF CONDITION IS MET
//: VALUE IF CONDITION IS NOT MET
let message = age >= 18
? "You are an adult"
: "You are not yet an adult"
