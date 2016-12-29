//
//  LoginActionHandler.swift
//  AskLyte
//
//  Created by Jay Kesavan on 2/13/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//

import Foundation
import UIKit


class LoginActionDelegateHandler : NSObject, LoginActionDelegate
{
    
    //Specify the delegate that will be handling UI Events.
    var loginDataDelegate : LoginDataDelegate?
    var loginUIViewDelegate : LoginUIViewDelegate?
    
    
    override init(){
    
        print("Initializing Login Action Handler")
    
    }
    
    
    
    func handleLoginSubmit(_ sender : UIButton!){
    
        print("HandlingSubmitAction")
        //Get the text field value
        let userName = loginUIViewDelegate!.getUserNameTextFieldValue();
        let pwd = loginUIViewDelegate!.getPwdTextFieldValue();
        let emailAddress = loginUIViewDelegate!.getEmailAddressTextFieldValue();
        
        print(userName);
        print(pwd);
        print(emailAddress);
        
        loginDataDelegate!.confirmLoginInformation("test", pwd: "jay")
        
    
    }
    
    
    
}
