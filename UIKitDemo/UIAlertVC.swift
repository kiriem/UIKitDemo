//
//  UIAlertViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIAlertViewController: UIViewController {
    
    let myButton:UIButton = UIButton();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        self.title = "UIAlertController"
        self.view.backgroundColor = UIColor.whiteColor();
        
        myButton.frame = CGRect(x: 0, y: 0, width: 200, height: 40);
        myButton.backgroundColor = UIColor.greenColor();
        myButton.setTitle("PUSH ME!", forState: UIControlState.Normal);
        myButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y: 200);
        myButton.addTarget(self, action: Selector("onClick:"), forControlEvents: .TouchUpInside);
        self.view.addSubview(myButton);
        
    }
    
    override func viewDidAppear(animated: Bool) {
        
    }
    
    func onClick(sender:UIButton){
        let myAlert = UIAlertController(title: "SwiftAlert", message: "Swiftを勉強してiOSアプリを開発しましょう", preferredStyle: .Alert);
        
        let myOkAction = UIAlertAction(title: "OK", style: .Default) { action in
            println("Action OK!!")
        }
        
        myAlert.addAction(myOkAction);
        presentViewController(myAlert, animated: true, completion: nil);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
}