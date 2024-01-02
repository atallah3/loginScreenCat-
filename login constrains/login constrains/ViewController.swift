//
//  ViewController.swift
//  login constrains
//
//  Created by Abdelrahman Atallah on 30/12/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var phoneTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        tfShadow(phoneTF)
        tfShadow(passwordTF)
        loginButton.layer.cornerRadius = 10
        
        passwordTF.setRightViewPasswordIcon(icon: UIImage(systemName: "eye.slash")!)
        
    }
    
    func tfShadow(_ textField : UITextField!){
        textField.layer.shadowColor = UIColor.black.cgColor
        textField.layer.shadowOpacity = 0.2
        textField.layer.shadowRadius = 10
    }
    
}


