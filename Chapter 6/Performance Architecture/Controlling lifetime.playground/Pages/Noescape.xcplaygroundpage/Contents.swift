//: ### Noescape

func increase(@noescape f: () -> Int ) -> Int {
  return f() + 1
}

struct Data {
  var number: Int
  
  mutating func increaseNumber() {
    number = increase { number }
  }
}

var data = Data(number: 2)
data.increaseNumber()
data.number

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
