//
//  ViewController.swift
//  HW1
//
//  Created by user on 08.01.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /*@IBAction func loginButtonPressed(_ sender: Any) {
        guard let login = loginTextField.text, let password = passwordTextField.text else {
            return
        }
        if login == "login" && password == "password" {
            LoginViewController()
        }
    }*/


}

