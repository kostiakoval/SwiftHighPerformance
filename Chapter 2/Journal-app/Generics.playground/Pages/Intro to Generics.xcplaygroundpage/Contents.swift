//: ### Intro to Generics

func printMe(x: Int) {
  print("Me - \(x)")
}

func printMe<T>(x: T) {
  print("Me - \(x)")
}

printMe(10.0)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)