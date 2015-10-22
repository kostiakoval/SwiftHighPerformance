//: ### Autoclosure 

func increase(@autoclosure f: () -> Int ) -> Int {
  return f() + 1
}

func check(@autoclosure condition: () -> Bool) {
  if !condition() {
    print("Its false")
  }
}

let x = 10
increase(x)
check(x > 10)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
