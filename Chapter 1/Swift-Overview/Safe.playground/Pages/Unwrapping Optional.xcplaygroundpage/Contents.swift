//: ### Unwrapping Optionals

var maybeName: String?
maybeName = "Sara"

//: Forced Unwrapping, using `!`
if maybeName != nil {
  let res = "Name - " + maybeName!
} else {
  print("No name")
}

//: Optional Binding.
//: This is preffered way
if let name = maybeName {
  let res = "Name - " + name
} else {
  print("No name")
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
