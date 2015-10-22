//: ### Generics

func minimum(x: Int, _ y: Int) -> Int {
  return (x < y) ? x : y
}

minimum(10, 11)
// minimum (11,5, 14.3) // error
// Minimun works only with Int types

//: Generic type minimum fucntion. It works with any Comparable type 
func minimum<T : Comparable>(x: T, _ y: T) -> T {
  return (x < y) ? x : y
}

minimum(10, 11)
minimum(10.5, 1.4)
minimum("A", "ABC")

min(10, 10)
//: [TOC](TOC) | [Previous](@previous)
