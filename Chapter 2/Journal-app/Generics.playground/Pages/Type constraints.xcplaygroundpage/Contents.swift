//: ### Type constraints
/*
func minElem<T>(x: T, _ y: T) -> T {
  return x < y ? x : y
  // Show error, Can't compare type T types
}
*/

func minElem<T : Comparable>(x: T, _ y: T) -> T {
  return x < y ? x : y
}

minElem(10, 20)
minElem("A", "B")

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
