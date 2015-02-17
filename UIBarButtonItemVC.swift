//
//  UIBarButtonItemViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIBarButtonItemViewController:UIViewController {
    
    var myLeftButton:UIBarButtonItem!
    var myRightButton:UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIBarButtonItem";
        self.view.backgroundColor = UIColor.whiteColor();
        self.navigationController?.navigationBar;
        
        myLeftButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: "onClick:");
        myLeftButton.tag = 1;
        
        myRightButton = UIBarButtonItem(title: "RightButton", style: .Plain, target: self, action: "onClick:");
        myRightButton.tag = 2;
        
        //self.navigationItem.leftBarButtonItem = myLeftButton;
        self.navigationItem.rightBarButtonItem = myLeftButton;
    }
    
    func onClick(sender: UIButton){
        switch(sender.tag){
        case 1:
            self.view.backgroundColor = UIColor(red:1, green:0, blue:0, alpha:1);
        case 2:
            self.view.backgroundColor = UIColor(red:1, green:0.59, blue:0.11, alpha:1);
        default:
            println("Error");
            break;
        }
    }
}
