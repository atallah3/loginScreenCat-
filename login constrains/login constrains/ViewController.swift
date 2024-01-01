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
extension UITextField{
    
    func setRightViewPasswordIcon(icon: UIImage) {
      
        let btnView = UIButton(frame: CGRect(x: 0, y: 0, width: ((self.frame.height) * 0.70), height: ((self.frame.height) * 0.70)))
        btnView.setImage(icon, for: .normal)
        btnView.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        self.rightViewMode = .always
        self.rightView = btnView
        
        btnView.addTarget(self, action: #selector(btnTapped(sender:)), for: .touchUpInside)
        
    }
    @objc func btnTapped (sender : UIButton){
//        print("btn tapped")
        if sender.imageView?.image == UIImage(systemName:"eye"){
            sender.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            self.isSecureTextEntry = true
        }else{
            sender.setImage(UIImage(systemName: "eye"), for: .normal)
            self.isSecureTextEntry = false
        }
    }
    
}

