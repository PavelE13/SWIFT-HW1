//
//  ViewController.swift
//  Sem1
//
//  Created by user on 07.01.2024.
//

import UIKit
class ViewController: UIViewController {

/*    let loginTextField = UITextField(frame: CGRect(x: 150, y: 400, width: 200, height: 30))
    let passwordTextField = UITextField(frame: CGRect(x: 150, y: 430, width: 200, height: 30))
*/
   private var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Добро пожаловать!"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .blue
        return label
    }()
    
    private var myButton = UIButton()
    private var myButton2 = UIButton()
    
    private var isMyButton2Taped = false
    
    private var loginTextField = UITextField()
    private var passwordTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        /*let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "flames")
        backgroundImage.contentMode = UIView.ContentMode.scaleToFill
        self.view.insertSubview(backgroundImage, at: 0)*/
        
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    private func addButton() {
        myButton.setTitle("Сменить окно", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        myButton.backgroundColor = .green
        myButton.addTarget(self, action: #selector(tap), for: .touchUpInside)
        myButton.setTitleColor(.red, for: .highlighted)
    }
    
    private func addButton2() {
        myButton2.setTitle("Сменить цвет окна", for: .normal)
        myButton2.setTitleColor(.white, for: .normal)
        myButton2.backgroundColor = .green
        myButton2.addTarget(self, action: #selector(tap2), for: .touchUpInside)
        myButton2.setTitleColor(.red, for: .highlighted)
    }
    
    private func setupUI() {
        addButton()
        addButton2()
        view.addSubview(myLabel)
        view.addSubview(myButton)
        view.addSubview(myButton2)
        loginTextField.placeholder = "Login"
        passwordTextField.placeholder = "Password"
        view.addSubview(loginTextField)
        view.addSubview(passwordTextField)
        addConstraints()
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        guard let _ = loginTextField.text, let _ = passwordTextField.text else {
            return
        }
    }
    
    private func addConstraints() {
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myButton.translatesAutoresizingMaskIntoConstraints = false
        myButton2.translatesAutoresizingMaskIntoConstraints = false
        loginTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            myLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            myLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myLabel.widthAnchor.constraint(equalToConstant: view.frame.size.width/2),
            myLabel.heightAnchor.constraint(equalToConstant: view.frame.size.width/10),
            
            myButton.topAnchor.constraint(equalTo: myLabel.bottomAnchor, constant: 20),
            myButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            myButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60),
            
            myButton2.topAnchor.constraint(equalTo: myButton.bottomAnchor, constant: 10),
            myButton2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            myButton2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            myButton2.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60),
            
            loginTextField.topAnchor.constraint(equalTo: myButton2.bottomAnchor, constant: 60),
            loginTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            loginTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 30),
            passwordTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            passwordTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60),
            passwordTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60)
        ])
    }
}
//MARK: objc methods
    private extension ViewController {
        @objc func tap() {
            navigationController?.pushViewController(NextViewController(), animated: true)
        }
        
        @objc func tap2(){
            isMyButton2Taped.toggle()
            
            if isMyButton2Taped {
                view.backgroundColor = .yellow
            }
            else {
                view.backgroundColor = .white
            }
        }
    }

