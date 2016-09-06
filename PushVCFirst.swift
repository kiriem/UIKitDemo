//
//  PushVCFirst.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/09/17.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class PushVCFirst: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        self.title = "PushVC"
        self.view.backgroundColor = UIColor.whiteColor()
        
        let myLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 150, 100))
        myLabel.text = "FirstView"
        myLabel.textColor = UIColor.blackColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: width/2, y: height/3*1)
        self.view.addSubview(myLabel)
        
        let myButton:UIButton = UIButton(frame: CGRectMake(0, 0, 150, 150))
        myButton.setTitle("nextView", forState: .Normal)
        myButton.backgroundColor = UIColor.greenColor()
        myButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        myButton.layer.position = CGPoint(x: width/2, y: height/4*3)
        myButton.layer.masksToBounds = true
        myButton.layer.cornerRadius = 75
        myButton.addTarget(self, action: #selector(self.onClick(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(myButton)
        
    }
    
    func onClick(sender: UIButton){
        let nextVC:PushVCSecond = PushVCSecond()
        self.presentViewController(nextVC, animated: true, completion: nil)
    }
}
