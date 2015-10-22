//: ### Reduce

// reduce Implementation example
extension SequenceType {
//func reduce<T>(initial: T, @noescape combine: (T, Self.Generator.Element) -> T) -> T {
  func reduce(initial: Double, combine: (Double, Self.Generator.Element) -> Double) -> Double {
    var result = initial
    for item in self {
      result = combine(result, item)
    }
    return result
  }
}

let numbers = [1, 2, 3]

let sum = numbers.reduce(0) { acc, number in acc + number }
numbers.reduce(0) { $0 + $1 }
numbers.reduce(0, combine: +)
sum

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
