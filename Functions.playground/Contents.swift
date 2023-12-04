import Foundation

func plusTwo(value:Int){
    let newVlaue = value + 2
}
plusTwo(value: 3)


func newPlusTwo(value:Int)  -> Int {
    // swift auto mavti
    value + 2
}
newPlusTwo(value: 4)




func customAdd(
    value1:Int,
    value2:Int
)->Int{
    value1 + value2
}

let customAdded = customAdd(value1: 10, value2: 20)

customAdded



/// if you do not want custom names
func customMinus(_ lhs:Int,_ rhs:Int)->Int{
    lhs-rhs
}


let customSubtracted = customMinus( 20, 10)

////

@discardableResult
func customAdd(_ lhs : Int, _ rhs : Int)->Int{
    lhs + rhs
}


///
/// function inside function
///

func doSomethingComplicated(
    with value:Int
)->Int{
    func mainLogic(value: Int) -> Int{
        value + 2
    }
    return mainLogic(value:value + 3)
}

doSomethingComplicated(with: 30)




/// default value of args
func getFullName(
    firstName: String = "Foo",
    lastName: String = "Bar"
)-> String{
    "\(firstName) \(lastName)"
}

getFullName()
getFullName(firstName: "Bar")
getFullName(lastName: "Bar")
getFullName(firstName: "hello",lastName: "world")
