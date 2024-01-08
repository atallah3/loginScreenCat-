//
//  Extensions.swift
//  login constrains
//
//  Created by Abd Elrahman Atallah on 02/01/2024.
//

import UIKit

extension UITextField{
    
    func setRightViewPasswordIcon(icon: UIImage) {
      
        let btnView = UIButton(frame: CGRect(x: 0, y: 0, width: ((self.frame.height) * 0.70), height: ((self.frame.height) * 0.70)))
        btnView.setImage(icon, for: .normal)
        btnView.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 5)
        self.rightViewMode = .always
        self.rightView = btnView
        btnView.tintColor = .black
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
    
    
    func makeTextFieldWithShadow(){
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.2
        self.layer.shadowRadius = 10
    }
    
}
