//
//  LoginViewController.swift
//  adb-ios
//
//  Created by Abhijot Kaler on 02/05/21.
//  Copyright © 2021 Li Zonghai. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var statusLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func LoginButtonPressed(_ sender: Any) {
        
        if validateFields(emailField: emailField.text ?? "", passField: passwordField.text ?? "") {
            
            // HTTP requests to back end here
        }
     else
        {
         statusLabel.text = "Email or password is invalid. Try again"
         statusLabel.alpha = 1
     }
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func validateFields(emailField: String, passField: String) -> Bool {
        if (emailField.isEmpty || passField.isEmpty) {
            print("empty field")    // development
            return false
        }
        if (!emailField.contains("@") || !emailField.contains(".")) {
            print("invalid email")    // development
            return false
        }
        return true
    }

}
