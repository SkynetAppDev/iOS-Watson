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
    
    
    static func getTextField(label : String, frameIP: CGRect) -> UITextField{
        
        let textField = UITextField(frame: frameIP)
        textField.placeholder = label;
        textField.font = UIFont(name: "Arial-BoldMT", size: 22)
        textField.borderStyle = UITextBorderStyle.Line
        return textField;
    
    }
    static func getButton(label : String, frameIP: CGRect) -> UIButton{
            
            
            let btn = UIButton(type: UIButtonType.System) as UIButton
            btn.setTitle(label, forState: UIControlState.Normal)
            btn.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal)
            btn.frame=CGRectMake(50, 300, 200, 100)
            return btn;
            
    }
    
    
    
}