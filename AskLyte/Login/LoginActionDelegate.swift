//
//  LoginDelegate.swift
//  AskLyte
//
//  Created by Jay Kesavan on 2/13/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//

import Foundation
import UIKit

protocol LoginActionDelegate: class, UITextFieldDelegate{
    
    func handleLoginSubmit(_ sender : UIButton!);
    
}
