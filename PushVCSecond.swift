//
//  PushVCSecond.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/09/17.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import Foundation
import UIKit

class PushVCSecond: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "SecondVC"
        self.view.backgroundColor = UIColor.redColor()
        
        let width = self.view.frame.width
        let height = self.view.frame.height
        
        let backBtn:UIButton = UIButton(frame: CGRectMake(0, 0, 100, 100))
        backBtn.setTitle("BACK", forState: .Normal)
        backBtn.setTitleColor(UIColor.blackColor(), forState: .Normal)
        backBtn.backgroundColor = UIColor.greenColor()
        backBtn.layer.cornerRadius = 50
        backBtn.layer.masksToBounds = true
        backBtn.layer.position = CGPoint(x: width/2, y: height/2)
        backBtn.addTarget(self, action: #selector(self.back(_:)), forControlEvents: .TouchUpInside)
        self.view.addSubview(backBtn)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func back(sender: UIButton){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}
