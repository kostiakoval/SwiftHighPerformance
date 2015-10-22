//: ### Optionals

var name = "Sara"
//name = nil //Error. You can’t assign nil to a non-optional type
//: It is not possible to assign a `nil` to a non-optional types like `Int`, `String` and other.
//: You must declare a variable as an Optional, by adding `?` to the type.
//: Example: `String?`, `Int?`

var maybeName: String?
maybeName = "Sara"
maybeName = nil // This is allowed now

//: `Optional<Type>` style.
//: Not preffered
var someName: Optional<String>

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
