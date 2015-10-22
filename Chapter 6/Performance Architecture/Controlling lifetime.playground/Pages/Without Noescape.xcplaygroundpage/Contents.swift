//: ### Without Noescape

func increase(f: () -> Int ) -> Int {
  return f() + 1
}

struct Data {
  var number: Int
  
  mutating func increaseNumber() {
    number = increase { self.number }
  }
}

var data = Data(number: 10)
data.increaseNumber()
data.number

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
