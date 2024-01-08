//
//  ViewController.swift
//  login constrains
//
//  Created by Abdelrahman Atallah on 30/12/2023.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - properties
    
    
    //MARK: - IBOutlet
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var phoneTF: UITextField!
    
    //MARK: - viewControllerLifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cofigUI()
        
    }
    //MARK: - funcions
    func cofigUI(){
        phoneTF.makeTextFieldWithShadow()
        passwordTF.makeTextFieldWithShadow()
        loginButton.layer.cornerRadius = 10
        passwordTF.setRightViewPasswordIcon(icon: UIImage(systemName: "eye.slash")!)
    }
    
   
    //MARK: - IBAction
    @IBAction func loginButton(_ sender: Any) {
    }
    @IBAction func forgetPasswordButton(_ sender: Any) {
        
    }
    @IBAction func signupButton(_ sender: Any) {
    }
    
}


