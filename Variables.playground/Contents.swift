import Foundation

let x=10
let y=12

var greeting = "Hello, playground"


var names = [
x,y
]

names = [4]

names.append(12)
names.append(15)


 
 // let
 // NO re-assignment, no mutations


// var
// mutate and re-assign




// value types

let foo = "foo"
var foo2 = foo

foo2 = "foo 2"

// value types
foo
foo2



//
let moreNames = ["foo","Bar"]

var copy = moreNames
copy.append("cm")

moreNames
copy

// structures are value type, 
//classes are reference type



// MUTABLES

// ns-mutable-array
let oldArray = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

oldArray.add("Baz")
var newArray = oldArray

oldArray
newArray


// functions
let someNames = NSMutableArray(
    array: [
        "Foo",
        "Bar"
    ]
)

func changeTheArray(_ array:NSArray){
    let copy = array as! NSMutableArray
    copy.add("cccc")
}

changeTheArray(someNames)
someNames

// original array is changed







