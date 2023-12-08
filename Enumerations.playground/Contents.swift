import Foundation


/// Categorization of similar values that are named
/// like animals


//struct Animal{
//    let type : String
//
//    init(type: String) {
//        if type == "Rabbit" || type == "Dog" || type == "Cat" {
//            self.type = type
//        }else{
//            preconditionFailure()
//        }
//      
//    }
//}

//Animal(type: "Bike")


enum Animals{

//    case cat, dog, rabbit
    
    case cat
    case dog
    case rabbit
    
}

let cat = Animals.cat
cat



if cat == Animals.cat {
    "This is a cat"
} else if cat == Animals.dog{
    "this is a dog"
} else{
    "this is something else"
}


//func == (lhs:Animals,rhs:Int) -> Bool {
//    lhs == .cat && rhs == 3
//}
 



switch cat {
case .cat:
    "This is a cat"
    break
case .dog:
    "this is a dog"
    break
case .rabbit:
    "this is rabbit"
    break
    
//default:
//    "this is something else"
}


///!!!
///Asociative values
///Asociative values
///

enum Shortcut{
    case fileFolder(path:URL,name:String)
    case wwwUrl(path: URL)
    case song(artist:String,songName:String)
}

let wwwApple = Shortcut.wwwUrl(
    path: URL(string:"www.https://apple.com")!
)


// no equality by default

//if wwwApple == Shortcut.wwwUrl(
//    path: URL(string:"www.https://apple.com")!
//)



//switch wwwApple {
//case .fileFolder(
//    let path,
//    let name
//):
//    path
//    name
//    break
//case .wwwUrl(
//    let path
//):
//    path
//    break
//case .song(
//    let artist,
//    let songName
//):
//    artist
//    songName
//    break
//}


switch wwwApple {
    
    case let .fileFolder(
        path,
        name
    ):
        path
        name
        break
    
    case let .wwwUrl(
        path
    ):
        path
        break
    
    case let .song(
        artist,
        songName
    ):
        artist
        songName
        break
    
}



if case let .wwwUrl(path)=wwwApple{
    path
}


let withoutYou = Shortcut.song(artist: "Symphony x", songName: "Whithout you")


if case let .song(_,songName)=withoutYou{
    songName
}





// similar

enum Vehicle{
    
    case car(manufacturer:String,model:String)
    case bike(manufacturer:String,yearMade:Int)
    
    
    
    // pattern matching
    var  manufacturer : String{
        switch self {
        case let .car(_ ,foo),
            let .bike(foo ,_):
            return  foo
        }
    }

    
//    var  manufacturer : String{
//        switch self {
//        case let .car(manufacturer ,_),
//            let .bike(manufacturer ,_):
//            return  manufacturer
////            case let .car(manufacturer ,_):
////                return  manufacturer
////            case let .bike(manufacturer ,_):
////                return  manufacturer
//        }
//    }

    
//    func getManufacturer()->String{
//        switch self {
//            case let .car(manufacturer ,_):
//                return  manufacturer
//            case let .bike(manufacturer ,_):
//                return  manufacturer
//        }
//    }

}


let car = Vehicle.car(manufacturer: "tesla", model: "x")
//car.getManufacturer()
car.manufacturer


let bike = Vehicle.bike(manufacturer: "HD",yearMade: 1998)
bike.manufacturer


//
//switch car {
//    case let .car(manufacturer ,_):
//        manufacturer
//        break
//
//    case let .bike(manufacturer ,_):
//        manufacturer
//        break
//}
//
//
//switch bike {
//    case let .car(manufacturer ,_):
//        manufacturer
//        break
//
//    case let .bike(manufacturer ,_):
//        manufacturer
//        break
//}
//


//func getManufacturer(from vehicle:Vehicle)->String{
//    switch vehicle {
//        case let .car(manufacturer ,_):
//            return  manufacturer
//        case let .bike(manufacturer ,_):
//            return  manufacturer
//    }
//}
//
//
//getManufacturer(from: car)
//getManufacturer(from: bike)





///
///
///RAW datattypes
///
///



enum FamilyMember : String{
    
    case father = "Dad"
    case mother = "Mom"
    case brother = "bro"
    case sister = "Sis"
    
}

FamilyMember.father.rawValue
FamilyMember.brother.rawValue


enum FavoriteEmoji : String , CaseIterable{
    
    case smile = "😀"
    case rocket = "🚀"
    case fire = "🔥"

}


FavoriteEmoji.allCases
FavoriteEmoji.allCases.map(\.rawValue)



if let smile = FavoriteEmoji(rawValue: "😀"){
    "found the blush"
    smile
}else{
    "this doesn't exist"
}

    










