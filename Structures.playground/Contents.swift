import Foundation


/// structures are value types
/// no need of explicit constructor
/// structures inherently are immutable


struct Person{
    let name: String
    let age : Int
}


let foo = Person(
    name:"foo",
    age:23
)

foo.name
foo.age





///
///EXAMPLE
///EXAMPLE
///EXAMPLE
///


struct CommodoreComputer{
//    let name : String
//    let manufacturer : String
//    
    let name : String
    let manufacturer = "commodore"
    
//    init(name: String) {
//        self.name = name
//        self.manufacturer="commodore"
//    }
    
}


//
//let c64 = CommodoreComputer(
//    name: "my commodore",
//    manufacturer: "Commodore"
//)
//
//let c128 = CommodoreComputer(
//    name: "my commodore 128",
//    manufacturer: "Commodore"
//)
//

let c64 = CommodoreComputer(
    name: "my commodore"
)

c64.manufacturer
c64.name
//c64.name= "cm" // error


let c128 = CommodoreComputer(
    name: "my commodore 128"
)

c128.manufacturer
c128.name


///
///
///
///
///


struct Person2{
    
    let fName : String
    let lName : String
    
//    let fulName = "\(self.fName) \(self.lName)"
//    let fulName = "\(fName) \(lName)"
    
    
    
//    let fullName : String
//    init(fName: String, lName: String) {
//        self.fName = fName
//        self.lName = lName
//        self.fullName = "\(fName) \(lName)"
//    }
    
    
    // computed properties

    var fullName : String {
        "\(fName) \(lName)"
    }
    
}



let fooBar = Person2(fName: "Foo", lName:"Bar")

fooBar.fName
fooBar.lName
fooBar.fullName






///
///
///Mutable Structure
///Mutable Structure
///
///

/// mutating functions
///

struct Car{
    var currentSpeed : Int
    mutating func drive(speed : Int){
        "Driving..."
        currentSpeed = speed
    }
}


// var let mutations

let immutableCar = Car(currentSpeed: 10)
//immutableCar.drive(speed: 20)


var mutableCar = Car(currentSpeed: 10)
//mutableCar.drive(speed: 30)
//mutableCar.currentSpeed
let copy = mutableCar
mutableCar.currentSpeed
mutableCar.drive(speed: 30)
mutableCar.currentSpeed

// copy by value
let copy2 = mutableCar
copy2.currentSpeed
copy.currentSpeed







struct LivingThing{
    init() {
        "I am living thing"
    }
}



///
///No inheritence from structures
///

//struct Animal : LivingThing{
//
//}



/// COPY in structs


struct Bike {
    let manufacturer : String
    let currentSpeed :Int
    
    func copy(currentSpeed:Int) -> Bike {
        Bike(
            manufacturer: self.manufacturer, currentSpeed:currentSpeed
        )
    }
}



let bike1 = Bike(manufacturer: "HD", currentSpeed: 20)

var bike2 = bike1.copy(currentSpeed: 30)
// becuse let in struct
//bike2.currentSpeed = 30


bike1.currentSpeed
bike2.currentSpeed






