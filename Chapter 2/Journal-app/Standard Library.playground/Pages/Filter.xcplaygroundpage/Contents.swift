//: ### Filer

// filter Implementation example
extension SequenceType {
  func filter(includeElement: (Self.Generator.Element) -> Bool) -> [Self.Generator.Element] {
    var filtered: [Self.Generator.Element] = []
    for item in self {
      if includeElement(item) {
        filtered.append(item)
      }
    }
    return filtered
  }
}

let numbers = [1, 2, 3]

let even = numbers.filter { $0 % 2 == 0}
numbers.filter { $0 % 2 == 0 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
