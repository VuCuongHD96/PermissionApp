//
//  ViewController.swift
//  PermissionApp
//
//  Created by Sun on 07/09/2022.
//

import UIKit

final class ViewController:  UIViewController {
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    @IBAction func action(_ sender: Any) {
        PermissionManager().showListPermission()
    }
}
