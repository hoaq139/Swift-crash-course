import Foundation

let myName = "Vandad"
let myAge = 20
let yourName = "Foo"
let yourAge = 19

if myName == "vandad"{
    "Your name is \(myName)"
}else{
    "Wrong"
}

if myName == "Vandad"{
    "Your name is \(myName)"
}else if myName == "Foo"{
    "Are you Foo?"
}else{
    "Ok i give up"
}

if "Vandad" == myName{
    "An uncommon way of doing this"
}


if myName == "Vandad" && myAge == 30{
    "Name is Vandad and age is 30"
}else if myAge  == 20{
    "I only guessed the age are right"
}else{
    "i dont know"
}


if myAge == 20 || myName == "Foo"{
    "Either age is 20, name is Foo or both"
} else if myName == "Vandad" || myAge == 20{
    "Too late"
}

if myName == "Vandad" && myAge == 22 && yourName == "Foo"
    || yourAge == 19{
    "My name is Vandad and Im 22 and your name is Foo or you are 19"
}

if (myName == "Vandad"
    && myAge == 22) ||
     (yourName == "Foo" || yourAge == 19){
    "My name is Vandad and Im 22 ... And ...  your name is FOo or your are 19"
}else{
    "Hmm, that didnt work so well"
}

