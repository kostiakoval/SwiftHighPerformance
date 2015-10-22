import Foundation

public class Person {
  public let firstName: String
  public let lastName: String
  public let nickName: String
  
  public init (firstName: String, lastName: String, nickName: String) {
    self.firstName = firstName
    self.lastName = lastName
    self.nickName = nickName
  }
  
  public convenience init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, nickName:"")
  }
  
  public func changeNickName(nickName: String) -> Person  {
    return Person(firstName: firstName, lastName: lastName, nickName: nickName)
  }
  
}
