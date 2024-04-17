import Foundation

struct Person{
    let name: String
    let age: Int
}
let foo = Person(name: "Foo", age: 20)

foo.name
foo.age

struct CommodoreComputer{
    let name: String
    let manufacturer: String
    init(name: String){
        self.name = name
        self.manufacturer = "Commodore"
        
    }
}

let c64 = CommodoreComputer(
    name: "C64"
)
c64.name
c64.manufacturer

struct Person2{
    let firstName: String
    let lastName: String
    var fullName: String {
            return "\(firstName) \(lastName)"
        }
//    init(firstName: String, lastName: String, fullName: String) {
//        self.firstName = firstName
//        self.lastName = lastName
//        self.fullName = "\(firstName) \(lastName)"
//    }
}

let fooBar = Person2(firstName: "Foo", lastName: "Bar")

fooBar.firstName
fooBar.lastName
fooBar.fullName

struct Car{
    var currentSpeed: Int
    mutating func drive(speed: Int){
        "Driving..."
        currentSpeed = speed
    }
}
let immutableCar = Car(currentSpeed: 20)
var mutableCar = Car(currentSpeed: 10)
//mutableCar.drive(speed: 30)
//mutableCar.currentSpeed
let copy = mutableCar
mutableCar.drive(speed: 30)
mutableCar.currentSpeed
copy.currentSpeed


struct LivingThing{
    init(){
        "Im a living thing"
    }
}
//struct Animal: LivingThing{
//
//}
struct Bike{
    let manufacturer: String
    let currentSpeed: Int
    func copy(currentSpeed: Int) -> Bike{
        Bike(manufacturer: self.manufacturer, currentSpeed: currentSpeed)
    }
}

let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)
let bike2 = bike1.copy(currentSpeed: 30)
bike2.currentSpeed
bike1.currentSpeed

