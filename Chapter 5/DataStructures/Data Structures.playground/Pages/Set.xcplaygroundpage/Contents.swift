//: ### Set
import Foundation

//: #### Using Set

var numbers: Set = [1, 1, 2, 3, 3, 4]

//Insert
numbers.insert(10)

//Lookup

let number = numbers.contains(10)
let foundIndex =  numbers.indexOf(101)
let start: SetIndex = numbers.startIndex
let firts = numbers[start]

//Delete

numbers.remove(27)
numbers.removeAtIndex(numbers.startIndex)
numbers


//: #### Set Operations

let set = makeRandomSet(10)
let otherSet = makeRandomSet(set.count)

set.union(otherSet)
set.subtract(otherSet)
set.intersect(otherSet)
set.exclusiveOr(otherSet)

// Set and Array operations

let otherSequence = makeRandomArray(set.count)
set.union(otherSequence)

//

var otherSequence2 = Array(set)
otherSequence2.append(random())
set.isSubsetOf(otherSequence)

var otherSet2 = set
otherSet2.insert(random())
set.isSubsetOf(otherSequence)

//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

