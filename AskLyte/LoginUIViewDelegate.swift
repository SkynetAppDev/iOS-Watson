//
//  LoginUIViewDelegate.swift
//  AskLyte
//
//  Created by Jay Kesavan on 3/6/16.
//  Copyright © 2016 Jay Kesavan. All rights reserved.
//



import Foundation

protocol LoginUIViewDelegate: class{
    
    func addCustomView();
    func getUserNameTextFieldValue() -> String;
    func getPwdTextFieldValue() -> String;
    func getEmailAddressTextFieldValue() -> String;
    
    
}