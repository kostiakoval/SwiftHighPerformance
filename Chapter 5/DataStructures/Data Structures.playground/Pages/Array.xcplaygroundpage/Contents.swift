//: ### Array

//: #### Creating
let array = [1, 10, 5, 124, 10]
let empty = [Int]()

var capacity = [Int]()
capacity.reserveCapacity(1000)

var defaultValues = [Int](count: 10, repeatedValue: 0)

//: #### Info
array.isEmpty
array.count
array.capacity

array.startIndex
array.endIndex

//: #### Accessing elements

array[1] // Second element at inde 1, Index starts with 0
array[0...4] // Range of values

array.first
array.last

//: #### Editing

//array[0] = 10 // Error, array is immutable

var mutableAr = [1, 2, 3, 4, 5]
mutableAr[0] = 5
//mutableAr[100] = 5 //Error, Array index out of range

// Replace range with other array
mutableAr[1...2] = [10, 20, 30, 40, 50, 60] // Add more
mutableAr[2...8] = [0] // Remove

//: #### Add Items

mutableAr.append(98)
mutableAr.insert(7, atIndex: 2)

let add = mutableAr + [1, 2, 3]
mutableAr += [56, 57]
mutableAr.appendContentsOf([1, 2, 3])

//: #### Remove Items

mutableAr.removeFirst()
mutableAr.removeFirst(5) // count

mutableAr.removeLast()
mutableAr.removeAtIndex(2)

mutableAr.removeAll()
mutableAr.removeAll(keepCapacity: true)

mutableAr = [1, 2, 3, 4]
mutableAr.removeRange(0...2)

//: #### Search 

let index = array.indexOf(10)
let found = array.contains(100)

//: #### Methods

let ordered = array.sort()
let bigger = array.filter { $0 > 100 }

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

