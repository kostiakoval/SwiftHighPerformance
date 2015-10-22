//: ### OptionSetType

struct PrintOption: OptionSetType {
  let rawValue: Int
  
  static let Fast       = PrintOption(rawValue: 1)
  static let Colour     = PrintOption(rawValue: 2)
  static let DoubleSide = PrintOption(rawValue: 3)
}

let fast: PrintOption = .Fast 
let all: PrintOption = [.Fast, .Colour, .DoubleSide]
all.contains(.Fast)
all.isEmpty

//: Mutate options 
var option = fast
option.insert(.Colour)
option.subtract(.Fast)
