//: ### Sequence

let seq = AnySequence(1...10)
for i in seq {
  i
}

let gen = seq.generate()
while let num = gen.next() {
  num
}

let r = seq.map { $0 + 10}

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
