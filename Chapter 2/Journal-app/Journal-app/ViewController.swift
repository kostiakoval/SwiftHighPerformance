//
//  ViewController.swift
//  Journal-app
//
//  Created by Kostiantyn Koval on 06/04/15.
//  Copyright (c) 2015 Kostiantyn Koval. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var titleField: UITextField!
  @IBOutlet weak var textField: UITextField!

  @IBOutlet weak var name: UILabel!
  var journal: JournalController =  {
    let owner = Person(firstName: "Me", lastName: "Superman")
    return JournalController(owner: owner)
  }()

  @IBAction func save(sender: UIButton) {
    let title = titleField.text!
    let text = textField.text!
      journal.addEntry(title, text: text);
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }
}


