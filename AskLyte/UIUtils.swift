//
//  UIUtils.swift
//  AskLyte
//
//  Created by JAYAKESH Ponganamoola on 3/3/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//

import Foundation
import UIKit


class UIUtils{
    
    
    static func getTextField(_ label : String, frameIP: CGRect) -> UITextField{
        
        let textField = UITextField(frame: frameIP)
        textField.placeholder = label;
        textField.font = UIFont(name: "Arial-BoldMT", size: 22)
        textField.borderStyle = UITextBorderStyle.line
        return textField;
    
    }
    static func getButton(_ label : String, frameIP: CGRect) -> UIButton{
            
            
            let btn = UIButton(type: UIButtonType.system) as UIButton
            btn.setTitle(label, for: UIControlState())
            btn.setTitleColor(UIColor.blue, for: UIControlState())
            btn.frame=CGRect(x: 50, y: 300, width: 200, height: 100)
            return btn;
            
    }
    
    
    
}
