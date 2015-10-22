//: ### Lazy Sequence

let infNums = InfiniteNums()
let lazyNumbers = infNums.lazy

let oddNumbers = lazyNumbers.filter { $0 % 2 != 0 }
let doubled = lazyNumbers.map { $0 * 2 }
let mixed = lazyNumbers.filter { $0 % 4 != 0 }.map { $0  * 2 }

var gen = oddNumbers.generate()
var gen2 =  mixed.generate()

for _ in 0...10 {
  gen.next()
  gen2.next()
}


lazyNumbers.contains(3)
//lazyNumbers.minElement() 
let ifnfNums = lazyNumbers.elements


let lz = [1, 2, 3].lazy
let el = lz.elements

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
