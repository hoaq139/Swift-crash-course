import Foundation

//let tạo ra các biến bất biến( hằng số)
//var tạo ra các biến có thể thay đổi
    // các biến tạo ra bởi cả 2 đêif giữ một tham chiếu hoặc 1 giá trị
let myName = "Hoaq"

let yourName = "Foo"

var names = [
    myName,
    yourName
]// this is a array

names.append("Bar")
names.append("Baz")

let foo = "Foo"
var foo2 = foo
foo2 = "Foo 2"
foo
foo2

let moreNames = [
    "Foo",
    "Bar"
]

var copy = moreNames
copy.append("Baz")
moreNames
copy


let oldArray = NSMutableArray(
    array:[
        "Foo",
        "Bar"
    ]
)

oldArray.add("Baz")
var newArray = oldArray
newArray.add("Qux")
oldArray
newArray

let someNames = NSMutableArray(
    array:[
        "Foo",
        "Bar"
    ]
)
func changeTheArray(_ array: NSArray){
    let copy = array as! NSMutableArray
    copy.add("Baz")
}
changeTheArray(someNames)
someNames
