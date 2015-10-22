//: ### Lazy Collection

let isOdd = { $0 % 2 != 0 }
let doubleElements = { $0 * 2 }

let col = Collection10()
let lazyCol = col.lazy


lazyCol.map(doubleElements) //  LazyMapCollection<Self.Elements, U>
lazyCol.reverse()           //LazyCollection<ReverseRandomAccessCollection<Self.Elements>>
lazyCol.filter(isOdd)  //LazyFilterCollection<Self.Elements>

//: LazyMapCollection
let lazyMap = lazyCol.map(doubleElements)
let count = lazyMap.count

lazyMap.isEmpty
lazyMap.reverse().isEmpty

//: LazyFilterCollection
lazyCol.filter(isOdd).isEmpty
lazyCol.filter(isOdd).count


//Query elements
lazyCol.map(doubleElements)[3]

let revCol = lazyCol.reverse()
let ind = revCol.startIndex.advancedBy(2)
revCol[ind]

let revMapCol = lazyCol.reverse().map(doubleElements)
let index = revMapCol.startIndex.advancedBy(2)
revMapCol[index]

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
