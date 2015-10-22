//: ### Own Sequence

struct InfiniteNums: SequenceType {
  
  func generate() -> AnyGenerator<Int> {
    var num = 0
    return anyGenerator {
      print("gen \(num)")
      return num++
    }
  }
}

let inf = InfiniteNums()
var g = inf.generate()
for i in 1...10 {
  let x = g.next()
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
