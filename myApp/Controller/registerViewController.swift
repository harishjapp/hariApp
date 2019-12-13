//
//  registerViewController.swift
//  myApp
//
//  Created by harishreddy kora on 13/12/19.
//  Copyright © 2019 harishreddy kora. All rights reserved.
//

import UIKit
import  Firebase

class registerViewController: UIViewController {

    @IBOutlet weak var userNameTF: UITextField!
    
    
    @IBOutlet weak var EmailTF: UITextField!
    
    
    @IBOutlet weak var passwordTF: UITextField!
    
    @IBOutlet weak var confirmPasswordTF: UITextField!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func registerBTN(_ sender: Any) {
        
   guard let email = EmailTF.text , !email.isEmpty ,
    let username = userNameTF.text , !username.isEmpty,
    let password = passwordTF.text , !password.isEmpty  else {
        return
        }
        
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            // ...
            if let error = error{
                debugPrint(error)
                return
            }
            
          print("successfully registered new user.")
            
        }

    }
    
}
