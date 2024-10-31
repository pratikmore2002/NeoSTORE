//
//  ForgotViewController.swift
//  NeoStore
//
//  Created by Neosoft on 28/10/24.
//

import UIKit

class ForgotViewController: UIViewController {
    @IBOutlet weak var userNameTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTxtField.setBorder(color: .white)
        userNameTxtField.setPlaceholderColor(color: .white)
        userNameTxtField.setIcon(UIImage(named: "username_icon") ?? UIImage(), padding: 8)
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.topItem?.title = ""

        
    }
    

    @IBAction func popBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
