import Foundation


class Person{
    var name: String
    var age: Int
    init(
        name: String,
        age: Int
    ){
        self.name = name
        self.age  = age
    }
    func increaseAge(){
        self.age += 1
    }
}

let foo = Person(name: "Foo", age: 20)
foo.age
foo.increaseAge()



foo.age
let bar = foo
bar.increaseAge()
foo.age
bar.age


if foo === bar{
    "Foo and Bar point to the same memory"
} else {
    "They dont point to the same memory"
}


class Vehicle {
    func goVroom() {
        "Vrom Vrom"
    }
}

class Car: Vehicle {
    
}
let car = Car()
car.goVroom()


class Person2 {
    private(set) var age: Int
    init(age: Int) {
        self.age = age
    }
    func increaseAge(){
        self.age += 1
    }
}

let baz = Person2(age: 20)
baz.increaseAge()
baz.age


class Tesla {
    let manufacturer = "Tesla"
    let model: String
    let year: Int
    
    init() {
        self.model = "X"
        self.year = 2023
    }
    init(
        model: String,
        year: Int
    ) {
        self.model = model
        self.year = year
    }
    convenience init(model: String) {
        self.init(model: model, year: 2023)
    }
}

class TeslaModelY: Tesla {
    override init() {
        super.init(model: "Y", year: 2023)
    }
}

let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)
fooBar.age
func doSomething(with person: Person2){
    person.increaseAge()
}
doSomething(with: fooBar)
fooBar.age

class MyClass {
    init() {
        "Initialized"
    }
    func doSomething(){
        //empty
    }
    deinit{
        "Deinitialized"
    }
}

let myClosure = {
    let myClass = MyClass()
    MyClass().doSomething()
}
myClosure()


/*Note: Different between struct and classs
 class: reference type: là 1 kiểu dữ liệu mà khi bạn tạo
 một bản sao của nó, bạn đang tạo một tham chiếu đến cùng
 một instance
 struct: value type: là một kiểu dữ liệu mà khi bạn tạo một bản
 sao của nó, bạn đang tạo một bản sao độc lập với giá trị của
 nó
 Example:
 struct PersonStruct {
     var name: String
 }

 // Tạo một instance của PersonStruct
 var person1 = PersonStruct(name: "John")

 // Tạo một bản sao của person1
 var person2 = person1

 // Thay đổi giá trị của thuộc tính name của person2
 person2.name = "Alice"

 // In ra giá trị của thuộc tính name của person1
 print(person1.name) // Output: John

 class PersonClass {
     var name: String
     
     init(name: String) {
         self.name = name
     }
 }

 // Tạo một instance của PersonClass
 let person1 = PersonClass(name: "John")

 // Tạo một bản sao của person1
 let person2 = person1

 // Thay đổi giá trị của thuộc tính name của person2
 person2.name = "Alice"

 // In ra giá trị của thuộc tính name của person1
 print(person1.name) // Output: Alice

*/


