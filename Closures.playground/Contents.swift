import Foundation


//func add(
//    _ lhs:Int,
//    _ rhs:Int
//)->Int{
//    lhs + rhs
//}

//{ (<#parameters#>) -> <#return type#> in
//    <#statements#>
//}

let add: (Int,Int) -> Int // signature
    = { (lhs: Int,rhs: Int) -> Int in // value
        lhs + rhs
    }

add(20,30)

func customAdd(
   _ lhs : Int,
   _ rhs : Int,
   using function : (Int,Int) -> Int
) -> Int{
    function(lhs,rhs)
}


// calling


// 1.
customAdd(
    20,
    30,
    using: { (lhs:Int,rhs:Int)->Int in
        lhs + rhs
    }
)


// 2.
/// trailing closure syntax
customAdd(
    20,
    30
)   { (lhs:Int,rhs:Int)->Int in
    lhs + rhs
}


// 3.
customAdd(
    20,
    30
)   { (lhs,rhs) in
    lhs + rhs
}


// 4.
customAdd(
    20,
    30
)   {
    $0 + $1
}


/////
///
///

let ages = [30,20,19,40]

ages.sorted(by:{$0 < $1})


ages.sorted(by: < )
ages.sorted(by: > )





///
///
///
///
func add10To(value:Int)->Int{
    value + 10
}

func add20To(value:Int)->Int{
    value + 20
}

func doAddition(
    on value: Int,
    using function: (Int) -> Int
) -> Int{
    function(value)
}


doAddition(on: 20, using: add10To(value:))
doAddition(on: 20, using: add20To(value:))



