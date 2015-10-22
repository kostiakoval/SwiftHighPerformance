//: ### Autoclosure escaping

// Show error, Work can't escape the function scope
//func runAsync<T>(@autoclosure work: () -> T, result: (T) -> Void ) {
  
func runAsync<T>(@autoclosure(escaping) work: () -> T, result: (T) -> Void ) {
  GCD.asyncOnBackground {
    let x = work()
    GCD.asyncOnMain {
      result(x)
    }
  }
}

let x = 10
runAsync(10 + 10) { print($0) }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
