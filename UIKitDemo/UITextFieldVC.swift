//
//  UITextFieldViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/08.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UITextFieldViewController: UIViewController, UITextFieldDelegate {
    
    let myLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 20));
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UITextField";
        self.view.backgroundColor = UIColor.whiteColor();
        
        //UILabelの生成
        myLabel.text = "TextFieldに文字列を追加"
        myLabel.textAlignment = NSTextAlignment.Center;
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2, y: 100);
        self.view.addSubview(myLabel);
        
        
        //UITextFieldの定義
        let myTextField:UITextField = UITextField(frame: CGRectMake(0, 0, 200, 30));
        myTextField.text = "Hello, World!";
        myTextField.delegate = self;
        myTextField.borderStyle = UITextBorderStyle.RoundedRect;
        myTextField.layer.position = CGPoint(x: self.view.bounds.width/2, y: 300);
        self.view.addSubview(myTextField);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        println("textFieldDidBeginEditing:" + textField.text);
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        
        myLabel.text = textField.text;
        
        println("textFieldShuldEndEditing:" + textField.text);
        return true;
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    
}
