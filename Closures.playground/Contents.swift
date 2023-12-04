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
















