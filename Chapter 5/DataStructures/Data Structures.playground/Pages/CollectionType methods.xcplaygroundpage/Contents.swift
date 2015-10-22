//: ### CollectionType methods

// Interchangeable
func useCollection<T: CollectionType>(x: T) {
  print("collection has \(x.count) elements")
}

let array = [1, 2, 3]
let set: Set = [2, 2, 3, 4, 5]
let dic = ["A" : 1, "B" : 2]

useCollection(array)
useCollection(set)
useCollection(dic)

// Extensions

extension CollectionType {
  
  var middle: Self.Index.Distance {
    return count / 2
  }
}

extension Dictionary {
  var middle: Dictionary.Index.Distance {
    print("Dictionary middle")
    return count / 2 + 100 // 😱
  }
}

array.middle
set.middle
dic.middle

array.isEmpty
set.isEmpty
dic.isEmpty

array.first
set.first
dic.first

array.dropFirst(0)
set.dropFirst(1)
dic.dropFirst(1)

array.map { $0 + 1 }
set.map { $0 + 1 }
dic.map { $0.1 + 1 }

array.indexOf(100)
set.indexOf(5)
dic.indexOf { $0.0 == "A" }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
