import Foundation

enum Animals{
    case cat,
    dog,
    rabbit
    
}

let cat = Animals.cat
cat

if cat == Animals.cat{
    "THis is a cat"
    
}else if cat == Animals.dog{
    "This is a dog"
}else{
    "This is something else"
}



