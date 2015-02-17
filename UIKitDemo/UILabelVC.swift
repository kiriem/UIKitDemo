//
//  UILabelViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/08.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UILabelViewController:UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UILabel";
        self.view.backgroundColor = UIColor.whiteColor();
        
        let myLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 100));
        myLabel.text = "UILabelTest";
        myLabel.textColor = UIColor.blackColor();
        myLabel.textAlignment = NSTextAlignment.Center;
        myLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2);
        self.view.addSubview(myLabel);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
}
