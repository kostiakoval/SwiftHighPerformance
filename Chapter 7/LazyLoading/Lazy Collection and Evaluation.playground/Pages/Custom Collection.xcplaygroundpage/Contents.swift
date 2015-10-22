//: ### Own Collection

struct Collection10: CollectionType {
  let data = Array(1...10)
  
  var startIndex: Int {
    return data.startIndex
  }
  
  var endIndex: Int {
    return data.endIndex
  }
  
  subscript (position: Int) -> Int {
    print("Pos \(position)")
    return data[position]
  }
  
  func generate() -> AnyGenerator<Int> {
    var index = 0
    
    return anyGenerator {
      print("Col index: \(index)")
      let next: Int? = index < self.endIndex ? self.data[index++] : nil
      return next
    }
  }
}

for i in Collection10() {
  i
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
