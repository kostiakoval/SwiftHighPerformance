//: Playground - noun: a place where people can play

import UIKit

let circle = UIImage(named: "circle.png")
let smile = UIImage(named: "smile.png")

if let path = NSBundle.mainBundle().pathForResource("circle", ofType: "png") {
  let cicrcle2 = UIImage(contentsOfFile: path)
}

Person(firstName: "Sam", lastName: "Lekson")
CGRect(x: 0, y: 0, width: 0, height: 0)
