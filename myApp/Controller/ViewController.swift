//
//  ViewController.swift
//  myApp
//
//  Created by harishreddy kora on 12/12/19.
//  Copyright © 2019 harishreddy kora. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }
    override func viewDidAppear(_ animated: Bool) {
        let storyboard = UIStoryboard(name: "LoginStoryboard", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC")
        present(controller, animated: true, completion: nil)
    }

}

