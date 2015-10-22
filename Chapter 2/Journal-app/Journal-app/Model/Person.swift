//
//  Person.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 06/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import Foundation

struct Person {
  let firstName: String
  let lastName: String
  let nickName: String

  func changeNickName(nickName: String) -> Person  {
    return Person(firstName: firstName, lastName: lastName, nickName: nickName)
  }
}

extension Person {
  init(firstName: String, lastName: String) {
    self.init(firstName: firstName, lastName: lastName, nickName:"")
  }
}
