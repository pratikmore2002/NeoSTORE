//
//  RegisterViewController.swift
//  NeoStore
//
//  Created by Neosoft on 29/10/24.
//

import UIKit

class RegisterViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var firstNameTxtField: UITextField!
    @IBOutlet weak var lastNameTxtField: UITextField!
    @IBOutlet weak var emailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var confirmPasswordTxtField: UITextField!
    @IBOutlet weak var phoneNo: UITextField!
    @IBOutlet weak var btnMale: UIButton!
    @IBOutlet weak var btnFemale: UIButton!
    
    @IBOutlet weak var termLbl: UILabel!
    
    @IBOutlet weak var chekBtn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupIconForRegisterForm()
        backButtonColor()
        imageSetting()
        setUnderlineForText()
        checkboxSetup()
      setTextFieldDelegate()
        hideKeyboard()
        
    }
    func setupIconForRegisterForm(){
        
        // for setIcon image.
        firstNameTxtField.setIcon(UIImage(named: Constants.usernameIcon) ?? UIImage())
        lastNameTxtField.setIcon(UIImage(named: Constants.usernameIcon) ?? UIImage())
        emailTxtField.setIcon(UIImage(named: Constants.emailIcon) ?? UIImage())
        passwordTxtField.setIcon(UIImage(named: Constants.passwordIcon) ?? UIImage())
        confirmPasswordTxtField.setIcon(UIImage(named: Constants.confirmPassword) ?? UIImage())
        phoneNo.setIcon(UIImage(named: Constants.phoneNo) ?? UIImage())
        
        //for setplaceholder color
        firstNameTxtField.setPlaceholderColor(color: .white)
        lastNameTxtField.setPlaceholderColor(color: .white)
        emailTxtField.setPlaceholderColor(color: .white)
        passwordTxtField.setPlaceholderColor(color: .white)
        confirmPasswordTxtField.setPlaceholderColor(color: .white)
        phoneNo.setPlaceholderColor(color: .white)
        
        //for setup border color.
        firstNameTxtField.setBorder(color: .white)
        lastNameTxtField.setBorder(color: .white)
        emailTxtField.setBorder(color: .white)
        passwordTxtField.setBorder(color: .white)
        confirmPasswordTxtField.setBorder(color: .white)
        phoneNo.setBorder(color: .white)
    }
    func backButtonColor(){
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.topItem?.title = ""
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    func imageSetting(){
        btnMale.setImage(UIImage.init(named: Constants.uncheckedBtn), for: .normal)
        btnMale.setImage(UIImage.init(named: Constants.checkedBtn), for: .selected)
        btnFemale.setImage(UIImage.init(named: Constants.uncheckedBtn), for: .normal)
        btnFemale.setImage(UIImage.init(named: Constants.checkedBtn), for: .selected)
        btnMale.isSelected = true
    }
    func setUnderlineForText(){
        let text = "I agree the "
        let attributedTxt = NSMutableAttributedString(string: text)
        let underline = NSMutableAttributedString(string: "Terms & Conditions",attributes: [NSAttributedString.Key.underlineStyle : NSUnderlineStyle.single.rawValue])
        attributedTxt.append(underline)
        termLbl.attributedText = attributedTxt
    }
    func checkboxSetup(){
            // Set up the initial image for the checkbox
        chekBtn.setImage(UIImage(named: Constants.uncheckBoxBtn), for: .normal)
        chekBtn.setImage(UIImage(named: Constants.checkedBoxBtn), for: .selected)
        }
    
    func setTextFieldDelegate(){
        firstNameTxtField.delegate = self
        lastNameTxtField.delegate = self
    }
    @IBAction func btnSelectedGender(_ sender: UIButton) {
//        sender.isSelected = !sender.isSelected
//        if sender.tag == 0{
//            btnFemale.isSelected = false
//        }
//        else{
//            btnMale.isSelected = false
        //}
        sender.isSelected.toggle()
            if btnMale.isSelected == false && btnFemale.isSelected == false {
                sender.isSelected = true
            } else {
                if sender == btnMale {
                    btnFemale.isSelected = false
                } else {
                    btnMale.isSelected = false
                }
            }
    }
    @IBAction func checkBtnTapped(_ sender: UIButton) {
        chekBtn.isSelected.toggle()
    }
    
    @IBAction func registerBtn(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

