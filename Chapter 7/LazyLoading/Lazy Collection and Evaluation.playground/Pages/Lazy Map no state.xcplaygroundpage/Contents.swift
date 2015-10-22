//: ### Lazy Map no state

let col = Array(0...10)
let lazyCol = col.lazy

let mapped = lazyCol.map { $0 + $0 + 10 }

for i in mapped {
  print(" \(i)", terminator:"") // 10 12 14 16 18 20 22 24 26 28 30
}

print("")
for i in mapped {
  print(" \(i)", terminator:"") // 10 12 14 16 18 20 22 24 26 28 30
}


//: [TOC](TOC) | [Previous](@previous)
