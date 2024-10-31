//
//  LoginViewController.swift
//  NeoStore
//
//  Created by Neosoft on 28/10/24.
//

import UIKit

class LoginViewController: UIViewController {
   
    @IBOutlet weak var usernameTxtField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIcon()

    }
    
    @IBAction func LogibBtn(_ sender: Any) {
        
        
    }
    
    @IBAction func AddNewAccountBtn(_ sender: Any) {
        navigate(storyboardName: "RegisterViewController", viewControllerID: "RegisterViewController")
    }
    @IBAction func ForgotPassword(_ sender: Any) {
        navigate(storyboardName: "ForgotPassword", viewControllerID: "ForgotViewController")
    }
    func setupIcon(){
        usernameTxtField.setIcon(UIImage(named: Constants.usernameIcon) ?? UIImage(), padding: 8)
        passwordTextField.setIcon(UIImage(named: Constants.passwordIcon) ?? UIImage(), padding: 8)
        
        usernameTxtField.setPlaceholderColor(color: .white)
        passwordTextField.setPlaceholderColor(color: .white)
        
        usernameTxtField.setBorder(color: .white)
        passwordTextField.setBorder(color: .white)
    }
    
}
