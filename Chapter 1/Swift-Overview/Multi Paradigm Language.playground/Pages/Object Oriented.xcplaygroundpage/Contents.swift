//: ### Object Oriented

class A {
  var name: String
  
  init(name: String) {
    self.name = name
  }
  
  func printMe() {
    print("A: \(name)")
  }
  
  final func printA() {
    print("A: \(name)")
  }
}

class B: A {
  var number: Int
  
  init (name: String, number: Int) {
    self.number = number
    super.init(name: name)
  }
  
  convenience init() {
    self.init(name:"Default", number:0)
  }
  
  override func printMe() {
    print("B: \(name), number \(number)")
  }
 
  /*Error can't override final func
  override func printA() {
  }
  */

}

let a = A(name: "A name")
let b = B()
let b1 = B(name: "B", number: 10)
a.printMe()
b.printMe()

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
