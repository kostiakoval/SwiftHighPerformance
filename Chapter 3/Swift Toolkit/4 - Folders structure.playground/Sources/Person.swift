//
// This file (and all other Swift source files in the Sources directory of this playground) will be precompiled into a framework which is automatically made available to test.playground.
//

public struct Person {
  let firstName: String
  let lastName: String
  let nickName: String

  public func changeNickName(nickName: String) -> Person  {
    return Person(firstName: firstName, lastName: lastName, nickName: nickName)
  }
}

public extension Person {

  init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, nickName:"")
  }
}

