//: ### Error Handling

enum Error: ErrorType {
  case NotNumber(String)
  case Empty
}

func increase(x: String) throws -> String {
  if x.isEmpty {
    throw Error.Empty
  }
  
  guard let num = Int(x) else {
    throw Error.NotNumber(x)
  }
  
  return String(num + 1)
}

do {
  try increase("10")
  try increase("Hi")
}
catch Error.Empty {
  print("Empty")
}
catch Error.NotNumber (let string) {
  print("\"\(string)\" is not a number")
}
catch {
  print(error)
}

func f() throws {
  try increase("10")
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)


