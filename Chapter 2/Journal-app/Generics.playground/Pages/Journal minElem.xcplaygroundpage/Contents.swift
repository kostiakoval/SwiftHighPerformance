//: ### Journal minElem

func minElem<T : Comparable>(x: T, _ y: T) -> T {
  return x < y ? x : y
}

//: Comparable
extension JournalEntry : Comparable {
}

public func == (lhs: JournalEntry, rhs: JournalEntry) -> Bool {
  
  return lhs.title == rhs.title &&
    lhs.text == rhs.text &&
    lhs.date == rhs.date
}

public func < (lhs: JournalEntry, rhs: JournalEntry) -> Bool {
  return lhs.text < rhs.text
}

// Example
let walking = JournalEntry(title: "Walking", text: "It was a great weather")
let goal = JournalEntry(title: "Read", text: "Read a book")
let smaller = minElem(walking, goal)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
