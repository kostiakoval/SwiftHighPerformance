//: ### Enumerations

enum Direction {
  case Left
  case Right
  case Up
  case Down
}

let direction: Direction = .Left
let d = Direction.Left

/*:
**Enums with Raw value**  

Each case get a defaul raw value.
For the String each value is the same as case name.  
These 2 declaration are the same. Use 1 variant with default value  
`case TakePhoto`  
`case TakePhoto = "TakePhoto"`
*/

enum Action: String {
  case TakePhoto
  case SendEmail
  case Delete
}

let sendEmail = Action.SendEmail
sendEmail.rawValue

let delete = Action(rawValue: "Delete")

enum Medal: Int {
  case Gold = 1 // by default srarts with 0
  case Silver
  case Bronze
  
  var place: Int {
    return self.rawValue
  }
}

let gold = Medal.Gold
gold.rawValue

Medal.Silver.rawValue
Medal.Silver.place


/*:
**Enum with Assosiated Values**
*/

enum Request {
  case Loging(login: String, password: String)
  case UserInfo(Int)
}

var r = Request.Loging(login: "a", password: "b")
//r = Request.UserInfo(10) // send user Id

switch r {
case let .Loging(l, p): 
  print("loging: \(l) password: \(p)")
  //remove from porduction code. Don't log credentials to console :)

case .UserInfo(let userID):
  print("User id \(userID)")
}


//: [TOC](TOC) | [Previous](@previous) | [Next](@next)

