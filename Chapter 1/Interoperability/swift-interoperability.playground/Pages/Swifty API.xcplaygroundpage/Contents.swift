//: ### Swifty API
import UIKit

let res = NSDate.compare(NSDate())
let frame = CGRect(x: 0, y: 0, width: 10, height: 10)

/*:
#### Init style  
Objective-C:

    - (instancetype)initWithFrame:(CGRect)frame 
    + (UIColor *)colorWithWhite:(CGFloat)white alpha:(CGFloat)alpha;
*/
let view = UIView(frame: frame)
let color = UIColor(white: 1, alpha: 0.5)

//: #### Enums  
//Objective-C

/*
typedef NS_ENUM(NSInteger, UIViewAnimationCurve) {
  UIViewAnimationCurveEaseInOut,         // slow at beginning and end
  UIViewAnimationCurveEaseIn,            // slow at beginning
  UIViewAnimationCurveEaseOut,           // slow at end
  UIViewAnimationCurveLinear
};
*/

//Swift  
enum UIViewAnimationCurve : Int {
  case EaseInOut    // slow at beginning and end
  case EaseIn       // slow at beginning
  case EaseOut      // slow at end
  case Linear
}

//: #### Options  

//Objective-C:  
/*
typedef NS_OPTIONS(NSUInteger, UIViewAutoresizing) {
  UIViewAutoresizingNone                 = 0,
  UIViewAutoresizingFlexibleLeftMargin   = 1 << 0,
  UIViewAutoresizingFlexibleWidth        = 1 << 1,
  UIViewAutoresizingFlexibleRightMargin  = 1 << 2,
  UIViewAutoresizingFlexibleTopMargin    = 1 << 3,
  UIViewAutoresizingFlexibleHeight       = 1 << 4,
  UIViewAutoresizingFlexibleBottomMargin = 1 << 5
};
*/

//Swift
/*
struct UIViewAutoresizing : OptionSetType {
  init(rawValue: UInt)
  
  static var None: UIViewAutoresizing { get }
  static var FlexibleLeftMargin: UIViewAutoresizing { get }
  static var FlexibleWidth: UIViewAutoresizing { get }
  static var FlexibleRightMargin: UIViewAutoresizing { get }
  static var FlexibleTopMargin: UIViewAutoresizing { get }
  static var FlexibleHeight: UIViewAutoresizing { get }
  static var FlexibleBottomMargin: UIViewAutoresizing { get }
}
*/


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)
