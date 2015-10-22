/*:
## Value Types
* enum
* struct

### Implemented as Value types (by using enum or struct)
* Int
* Double, other numbers
* String
* Character
* Array
* Dictionary
* Set 
* Optional
* Range

And many other.

### Main advanteges of Value tupes: 
* Immutable
* Copied on assignment.  
  Actual copying is done when the value is mutated. 2 variables can share the same immutable value data
*/

var str = "Hello"
var str2 = str

str += " :)"
//: `str` is mutated, `str2` are not  
//: value coping to `str2` happens here, when mutating the value.

