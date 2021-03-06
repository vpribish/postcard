//
//  ViewController.swift
//  postcard
//
//  Created by vincent pribish on 10/11/14.
//  Copyright (c) 2014 vincent pribish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var messageLabel: UILabel!
  @IBOutlet weak var nameLabel: UILabel!
  @IBOutlet weak var enterNameTextField: UITextField!
  @IBOutlet weak var enterMessageTextField: UITextField!
  @IBOutlet weak var mailButton: UIButton!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func sendMailButtonPressed(sender: UIButton) {
    // this is a comment
    messageLabel.hidden = false
    messageLabel.text = enterMessageTextField.text
    messageLabel.textColor = UIColor.redColor()
    nameLabel.text = enterNameTextField.text
    nameLabel.textColor = UIColor.blueColor()
    nameLabel.hidden = false
    enterMessageTextField.text = ""
    enterMessageTextField.resignFirstResponder()
    enterNameTextField.text = ""
    enterNameTextField.resignFirstResponder()
    mailButton.setTitle("mail sent", forState: UIControlState.Normal)
  }

}

