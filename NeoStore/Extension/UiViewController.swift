//
//  UiViewController.swift
//  NeoStore
//
//  Created by Neosoft on 30/10/24.
//

import Foundation
import UIKit
extension UIViewController{
    func hideKeyboard(){
        let gesture = UITapGestureRecognizer(target:self,action:#selector(dismissKeyboard))
        view.addGestureRecognizer(gesture)
        }
    @objc func dismissKeyboard(){
        view.endEditing(true)

    }
}
