import Foundation

protocol CanBreathe{
    func breathe()
}


struct Animal:CanBreathe{
    func breathe() {
        "animal breathing..."
    }
}


struct Person:CanBreathe{
    func breathe() {
        "person breathing..."
    }
}

let dog = Animal()
dog.breathe()
let foo = Person()
foo.breathe()


protocol CanJump {
    func jump()
}

extension CanJump{
    func jump() {
        "Jumping..."
    }
}

struct Cat:CanJump{
    
}

let whiskers=Cat()
whiskers.jump()



///
///
///
///

protocol HashName{
    var name:String{get}
    var age:Int{get set}
}

struct Dog:HashName{
    let name:String
    var age:Int
}


var woof = Dog(name: "woof", age: 10)

woof.age
woof.age += 1
woof.name
woof.age
