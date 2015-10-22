//: ### Lazy Map with state

let col = Array(0...10)
let lazyCol = col.lazy

var x = 10
let mapped = lazyCol.map { $0 + x++ }

for i in mapped {
  print(" \(i)", terminator:"") // 10 12 14 16 18 20 22 24 26 28 30
}

print("")
for i in mapped {
  print(" \(i)", terminator:"") // 21 23 25 27 29 31 33 35 37 39 41
}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
