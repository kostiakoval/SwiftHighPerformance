//: ### Guard

func doItGuard(x: Int?, y: Int) {
  guard let x = x else { return }
  //handle x 
  print(x)
  
  guard y > 10 else { return }
  //handle y
  print(y)
}

doItGuard(10, y: 11)

//: Complex Example

// Pyramids of Doom
func doIt(x: Int?, y: Int, z: String) {
  if let x = x {
    //handle x
    print(x)
    if y > 10 {
      //handle y
      print(y)
      if !z.isEmpty {
        // Handle z
        print(z)
      }
    }
  }
}

// Pyramids of Doom
func doItGuard(x: Int?, y: Int, z: String) {
  guard let x = x else { return }
  //handle x 
  print(x)
    
  guard y > 10 else { return }
  //handle y
  print(y)
 
  guard !z.isEmpty else { return }
  // Handle z
  print(z)
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
