//: Playground - noun: a place where people can play

print("A")
print("", terminator: "")
print("D")

print("")
debugPrint(1)
debugPrint(2, terminator: "")

struct Person: CustomStringConvertible, CustomDebugStringConvertible {
  let name: String
  let age: Int
  
  // Printable
  var description: String {
    return "Name: \(name)"
  }
  
  //Debug Printable
  var debugDescription: String {
    return "Name: \(name) age: \(age)"
  }
}

let person = Person(name: "Sam", age: 15)

debugPrint(person)
print(person)


measure {
  for i in 1...1000 {
    let person = Person(name: "Sam", age: i)
  }
}