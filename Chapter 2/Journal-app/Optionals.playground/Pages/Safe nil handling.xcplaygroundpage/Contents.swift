//: ### Safe nil handling

func showLocation(location: Location) {
}

var entry = JournalEntry(title: "Walking", text: "I was walking in the loop")
entry.location = Location(latitude: 37.331686, longitude: -122.030656)

if entry.location != nil {
  showLocation(entry.location!)
} else {
  //locationNotAvailable
}

if entry.location == nil {
  showLocation(entry.location!)
} else {
  //locationNotAvailable
}

//: Optional Binding
if let location = entry.location {
  showLocation(location)
}

//: Implicitly Unwrapped Optional
var name: String! = "Jon"
print("My name is" + name)

name = nil
//print("My name is " + name) // Crash

//: [TOC](TOC) | [Previous](@previous)
