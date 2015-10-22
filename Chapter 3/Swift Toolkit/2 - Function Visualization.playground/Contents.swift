//: Playground - noun: a place where people can play

import UIKit

for i in 0...100 {
  let x = (Double(i) / Double(i / 3))
  sin(x)
}

for i in 0...20 {
  pow(Double(i), 4)
}


func selectionSort(var arr: [Int]) -> [Int] {
  var minIndex = 0
  for i in 0..<arr.count {
    minIndex = i

    for j in (i + 1)..<arr.count {
      if arr[j] < arr[minIndex] {
        minIndex = j
      }
    }

    if (minIndex != i) {
      swap(&arr[i], &arr[minIndex])
    }
  }
  return arr
}

var ar = [10, 45, 1, 9, 3, 11, 1234, 4, 453, 9, 10, 2]
selectionSort(ar)
