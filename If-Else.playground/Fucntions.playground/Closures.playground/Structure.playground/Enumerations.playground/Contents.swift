import Foundation

enum Animals{
    case cat,
    dog,
    rabbit,
    hedgehog
    
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

switch cat{
case .cat:
    "THis is a cat"
    break
case .dog:
    "This is a dog"
    break
case .rabbit:
    "This is a rabbit"
    break
case .hedgehog:
    "This is a hedgehog"
    break
}


enum Shortcut{
    case fileOrFolder(path: URL, name: String)
    case wwwUrl(path: URL)
    case song(artist: String, songName: String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string: "https:/apple.com")!)

switch wwwApple{
case .fileOrFolder(let path, let name):
    path
    name
    break
case .wwwUrl(let path):
    path
    break
case .song( let artist, let songName):
    artist
    songName
    break
}

switch wwwApple{
case let .fileOrFolder( path,  name):
    path
    name
    break
case let .wwwUrl( path):
    path
    break
case let .song(  artist,  songName):
    artist
    songName
    break
}

if case let .fileOrFolder(path, name) = wwwApple {
    path
    
}

let withoutYou = Shortcut.song(artist: "Symphony", songName: "WithoutYou")

if case let .song(_, songName) = withoutYou{
    songName
}

enum Vehicle{
    case car(manufacturer: String, model: String)
    case bike(manufacturer: String, yearMade: Int)
    var manufacturer:String{
        switch self{
        case let .car(manufacturer, _):
            return manufacturer
            
        case let .bike(manufacturer, _):
            return manufacturer
        }
    }
}

func getManufacture(from vehicle: Vehicle) -> String{
    switch vehicle{
    case let .car(manufacturer, _):
        return manufacturer
        
    case let .bike(manufacturer, _):
        return manufacturer
    }
}
let car = Vehicle.car(manufacturer: "Tesla", model: "X")

car.manufacturer

let bike = Vehicle.bike(manufacturer: "HD", yearMade: 1987)

bike.manufacturer


getManufacture(from: bike)

enum FamilyMember: String{
    case father = "Dad",
         mother = "Mom",
         brother = "Bro",
         sister = "Sis"
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue

enum FavouriteEmoji: String, CaseIterable{
    case blush = "😍"
    case rocket = "🚀"
    case fire = "🔥"
}

FavouriteEmoji.allCases
FavouriteEmoji.allCases.map(\.rawValue)

if let blush = FavouriteEmoji(rawValue: "😍"){
    "Found the blush emoji"
    blush
}else{
    "This emoji doesn't exist"
}

enum Height{
    case short, medium, long
    mutating func makeLong(){
        self = Height.long
    }
}
var myHeight = Height.medium
myHeight.makeLong()
myHeight

indirect enum IntOperation{
    case add(Int, Int)
    case subtract(Int, Int)
    case freeHand(IntOperation)
    
    func calculateResult(
        of operation: IntOperation? = nil) -> Int{
            switch operation ?? self{
            case let .add(lhs, rhs):
                return lhs + rhs
            case let .subtract(lhs, rhs):
                return lhs - rhs
            case let .freeHand(operation):
                return calculateResult(of: operation)
            }
            
        }
}
let freeHand = IntOperation.freeHand(.add(2, 4))
freeHand.calculateResult()
