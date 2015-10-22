import Foundation

public struct Person {
  public var firstName: String
  public var lastName: String
  public var nickName: String
  
  public func changeNickName(nickName: String) -> Person  {
    return Person(firstName: firstName, lastName: lastName, nickName: nickName)
  }  
}

public  extension Person {
  public init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, nickName:"")
  }
}


public struct JournalEntry {
  public let title: String
  public let text: String
  public let date: NSDate
  
  public init (title: String, text: String) {
    self.title = title
    self.text = text
    date = NSDate()
  }
}
