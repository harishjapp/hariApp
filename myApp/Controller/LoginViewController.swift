//
//  LoginViewController.swift
//  myApp
//
//  Created by harishreddy kora on 13/12/19.
//  Copyright © 2019 harishreddy kora. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailText: UITextField!
    
    @IBOutlet weak var passwotdText: UITextField!
    @IBOutlet weak var activityIndicater: UIActivityIndicatorView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func forgotPasswordBtn(_ sender: Any) {
    }
    
    @IBAction func lofinBtn(_ sender: Any) {
        guard let email = emailText.text , !email.isEmpty ,
            let password = passwotdText.text , !password.isEmpty else {
                return
        }
        
        activityIndicater.startAnimating()
        
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if let error = error{
                debugPrint(error)
                self!.activityIndicater.stopAnimating()
                return
            }
            self!.activityIndicater.stopAnimating()
            print("Login sucessful")
        }
    }
    
   
    @IBAction func guestLogin(_ sender: Any) {
    }
    
}
