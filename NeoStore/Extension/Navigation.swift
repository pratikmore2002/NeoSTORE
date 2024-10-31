//
//  Navigation.swift
//  NeoStore
//
//  Created by Neosoft on 30/10/24.
//

import Foundation
import UIKit
extension UIViewController{
    func navigate(storyboardName: String, viewControllerID: String) {
        guard let navigationController = self.navigationController,
              let viewController = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: viewControllerID) as? UIViewController else {
            print("Error: Unable to navigate to view controller.")
            return
        }

        navigationController.pushViewController(viewController, animated: true)
    }

    
}
