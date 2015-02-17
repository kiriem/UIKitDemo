//
//  UISwitchVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UISwitchViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UISwitch";
        self.view.backgroundColor = UIColor.whiteColor();
        
        let mySwitch:UISwitch = UISwitch();
        mySwitch.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2);
        mySwitch.on = false;
        mySwitch.addTarget(self, action: "switchOn:", forControlEvents: UIControlEvents.ValueChanged);
        self.view.addSubview(mySwitch);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func switchOn(sender: UISwitch){
        if sender.on == true{
            self.view.backgroundColor = UIColor.greenColor();
        }else{
            self.view.backgroundColor = UIColor.whiteColor();
        }
    }
    
}