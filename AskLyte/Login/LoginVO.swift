//
//  LoginVO.swift
//  AskLyte
//
//  Created by Jay Kesavan on 2/13/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//

import Foundation

class LoginVO
{
    var firstName : String;
    var lastName : String;
    
    init(firstName : String, lastName : String){
        
        self.firstName = firstName;
        self.lastName = lastName;
        
        print("Init: LoginVO")
        print(self.lastName, self.firstName)
        
    }
    
}