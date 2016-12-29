//
//  LoginUIView.swift
//  AskLyte
//  Created by Jay Kesavan on 2/13/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//


import Foundation
import UIKit

class LoginView: UIView, LoginUIViewDelegate{
    
    var label: UILabel = UILabel()
    internal var textFieldUserName: UITextField?;
    internal var textFieldPwd: UITextField?;
    internal var textFieldEmailAddress: UITextField?;
    
    
    

    //Specify the delegate that will be handling UI Events.
    var loginActionHandlerDelegate : LoginActionDelegate?
    
  
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    
    func addCustomView() {
   
       
        //Add all the text fields
        textFieldUserName = UIUtils.getTextField("User Name",
            frameIP: CGRect(x: 10, y: 50, width: 300, height: 30));
        
        textFieldPwd = UIUtils.getTextField("Password",
            frameIP: CGRect(x: 10, y: 150, width: 300, height: 30));
        
        textFieldEmailAddress = UIUtils.getTextField("Email Address",
            frameIP: CGRect(x: 10, y: 200, width: 300, height: 30));
        
        
        self.addSubview(textFieldUserName!)
        self.addSubview(textFieldPwd!)
        self.addSubview(textFieldEmailAddress!)
        
        
        //Add Login Button
        let btn = UIUtils.getButton("Login Save",
            frameIP: CGRect(x: 50, y: 300, width: 200, height: 100));
        btn.isEnabled = true
        btn.isUserInteractionEnabled = true
        
        
        print("setting login target")
        btn.addTarget(loginActionHandlerDelegate, action: "handleLoginSubmit:", for: UIControlEvents.touchUpInside)
        print("After addTarget")
        self.addSubview(btn)
        print("After add View")
    
    }
    
    func getUserNameTextFieldValue() -> String {
        return (textFieldUserName?.text)!
    }
    func getPwdTextFieldValue() -> String {
        return (textFieldPwd?.text)!
    }
    func getEmailAddressTextFieldValue() -> String {
        return (textFieldEmailAddress?.text)!
    }
    
    
}
