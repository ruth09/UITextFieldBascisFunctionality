//
//  ViewController.swift
//  Textfiledbasics
//
//  Created by Ruth on 21/02/18.
//  Copyright © 2018 Ruth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var round: UIButton!
    @IBAction func go(_ sender: Any) {
        ShowThings.text = "UserName : \(userName.text!) \nPassword : \(passWord.text!)\nPhone Number : \(phoneNo.text!)"
    }
    @IBOutlet weak var ShowThings: UITextView!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var phoneNo: UITextField!
    @IBOutlet weak var userName: UITextField!
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        phoneNo.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        round.layer.cornerRadius = round.frame.width/2
        phoneNo.delegate = self
        userName.delegate = self
        passWord.delegate = self
    }
    
    


}
extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
