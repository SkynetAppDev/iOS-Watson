//
//  LoginDataDelegate.swift
//  AskLyte
//
//  Created by JAYAKESH Ponganamoola on 3/2/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//

import Foundation

protocol LoginDataDelegate: class{
    
    func confirmLoginInformation(_ username : String, pwd : String);
    
}
