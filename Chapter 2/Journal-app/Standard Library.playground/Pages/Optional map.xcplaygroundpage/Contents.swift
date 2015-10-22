//: ### Optional map

func double(x: Int) -> Int {
  return x * 2
}

// map Implementation example
extension Optional {
  func map(f: (Wrapped) -> Double) -> Double? {
    switch self {
      case .None: return nil
      case .Some(let x): return f(x)
    }
  }
}

let number: Int? = 10

number.map { Double($0) * 2.3 }
number.map { $0 * 2}


let doubled = number.map(double)

//vs Optional Binding
let doubled2: Int?
if let number = number {
  doubled2 = double(number)
} else {
  doubled2 = nil
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
