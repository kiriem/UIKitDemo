//
//  UIButtonViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/08.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIButtonViewController: UIViewController {
    
    let myLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 100));
    var status:Int = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIButton";
        self.view.backgroundColor = UIColor.whiteColor();
        
        let deviceWidth:CGFloat = self.view.frame.width;
        let deviceHeight:CGFloat = self.view.frame.height;
        
        //labelの定義
        myLabel.text = "おはようございます！";
        myLabel.textAlignment = NSTextAlignment.Center;
        myLabel.layer.position = CGPoint(x: deviceWidth/2, y: 200);
        self.view.addSubview(myLabel);
        
        //buttonの定義
        let myButton:UIButton = UIButton(frame: CGRectMake(0, 0, 200, 50));
        myButton.setTitle("Change Label!", forState: UIControlState.Normal);
        myButton.setTitleColor(UIColor.blueColor(), forState: UIControlState.Normal);
        myButton.addTarget(self, action: Selector("onClick:"), forControlEvents: .TouchUpInside);
        myButton.layer.position = CGPoint(x: deviceWidth/2, y: 400);
        self.view.addSubview(myButton);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func onClick(sender:UIButton){
        if status%2 == 0{
            myLabel.text = "Good morning!";
        }else{
            myLabel.text = "おはようございます！"
        }
        status++;
    }
    
}
