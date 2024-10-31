//
//  CustomButton.swift
//  NeoStore
//
//  Created by Neosoft on 28/10/24.
//

import Foundation
import UIKit

class CustomButton : UIButton{
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButton()
        
    }
    required init?(coder:NSCoder){
        super.init(coder: coder)
        setupButton()
    }
    private func setupButton(){
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.cornerRadius = 10
        
    }
}
