import Foundation


//struct Person{
//    var name : String
//    var age : Int
//}


// classes need to have a constructor

class Person{
    var name : String
    var age : Int
    
    init(name: String, age: Int ) {
        self.name = name
        self.age = age
    }
    
    func increaseAge(){
        self.age += 1
    }

}


// classes allows internal mutability
// classes are reference type



let foo = Person(name: "foo", age: 20)

foo.age
foo.increaseAge()
foo.increaseAge()
foo.age


let bar = foo
bar.increaseAge()
bar.age
foo.age

foo.age += 20
foo.age
 
if foo === bar {
    "foo and bar point to the same memory"
}





// inheritence

class Vehicle{
    func goVroom(){
        "Vroom vroom"
    }
}

class Car:Vehicle {
    
}

let car =  Car()
car.goVroom()



///
///
/// private variables
///
///

class Person2{
    private(set) var age :Int
    
    init(age: Int) {
        self.age = age
    }
    
    func inceaseAge(){
        self.age+=1
    }
}

var baz = Person2(age: 20)
baz.age
//baz.age += 1

baz.inceaseAge()
baz.age




///
/// Designated initializer
///



class Tesla{
    
    let manufacturer  = "tesla"
    let model : String
    let year :Int
    
    init(){
        self.model = "X"
        self.year = 2023
        
        //Designated initializer cannot rely on other initializer
        
        // self.init(model: "X", year: 2023)
        
    }
    
    init(model:String,year:Int){
        self.model = model
        self.year = year
    }
    
    convenience init(model:String) {
        self.init(model: model, year: 2023)
    }
}



// designated initializer can oly call to desingated initiaizer of super class


class TeslaModelY : Tesla {
    
    override  init(){
        super.init(model: "Y",year: 2023)
//        super.init(model: "Y")
    }
    
}


let modelY = TeslaModelY()
modelY.model
modelY.year
modelY.manufacturer

let fooBar = Person2(age: 20)

fooBar.age

func doSomething(with person:Person2) {
    person.inceaseAge()
}

doSomething(with: fooBar)
fooBar.age





/// De-initializers


class MyClass{
    
    func doSomething(){
        "Do Something"
    }
    
    deinit{
        "De-initialized"
    }
}


let myClosure={
    let myClass = MyClass()
    myClass.doSomething()
}
