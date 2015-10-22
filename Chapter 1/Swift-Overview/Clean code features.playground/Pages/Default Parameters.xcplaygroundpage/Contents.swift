//: ###  Default parameters and external names

func complexFunc (x: Int, _ y: Int = 0, extraNumber z: Int = 0, name: String = "default") -> String {
  return  "\(name): \(x) + \(y) + \(z) = \(x + y + z)"
}

complexFunc(10)
complexFunc(10, 11)
complexFunc(10, 11, extraNumber: 20, name: "name")

//: ---
//:
//: Default naming Rule
//: - First parameter don't have an external name
//: - Every other parameter has same external and internal name
//: - _ can be used to disable external name
//: - Provide custom external name with format: "ExternalName InternalName: Type"

func defaultNaming(x: Int, y: Int) {
}

defaultNaming(10, y: 11)

func defaultNaming(x: Int = 10, y: Int, z: Int = 20) -> String {
  return  "\(x) + \(y) + \(z) = \(x + y + z)"
}

defaultNaming(15, y: 20, z: 10)
defaultNaming(y: 20, z: 10)
defaultNaming(y: 20)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
