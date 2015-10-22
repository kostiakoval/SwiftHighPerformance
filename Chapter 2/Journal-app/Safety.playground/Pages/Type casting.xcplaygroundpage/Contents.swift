//: ### Type casting

import UIKit

var view: UIView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
view.backgroundColor = .redColor()
if view is UIImageView {
  print("yes")
} else {
  print("no")
}

let imageView = view as! UIImageView

if let view = view as? UIImageView {
  view.image = UIImage(named: "image")
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
