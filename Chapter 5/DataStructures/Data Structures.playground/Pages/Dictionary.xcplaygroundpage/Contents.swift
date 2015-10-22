//: ### Dictionary
//: #### Using Dictionary

var capital = [
  "Germany" : "Berlin",
  "France"  : "Paris"
]

capital["Norway"] = "Oslo"
capital.removeValueForKey("France")
capital["France"] = nil

if let index = capital.indexForKey("Spain") {
  print("found Spain at: \(index)")
}

capital.values
capital.keys

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

