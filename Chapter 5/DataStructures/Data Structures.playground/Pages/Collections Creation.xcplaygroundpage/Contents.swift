//: ### Collections Creation

// Empty
let array = [Int]()
let set = Set<Int>()
let dic = [String : Int]()

// Collections with Capacity
  
var array1 = [Int]()
array1.reserveCapacity(500_000)

var set1 = Set<Int>(minimumCapacity: 500_000)
var dic1 = [String : Int](minimumCapacity: 500_000)

// arraysDefaultValue
var array2 = [Int](count: 500_000, repeatedValue: 0)
array2[3] = 10

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
