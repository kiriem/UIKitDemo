//
//  UIAlertActionVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/16.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIAlertActionViewController: UIViewController {
    
    var myLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 100));
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIAlertAction";
        self.view.backgroundColor = UIColor.whiteColor();

        myLabel.textAlignment = NSTextAlignment.Center;
        myLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: 100);
        myLabel.textColor = UIColor.blackColor();
        self.view.addSubview(myLabel);
    
        let myButton:UIButton = UIButton(frame: CGRectMake(0, 0, 200, 100));
        myButton.setTitle("action!", forState: .Normal);
        myButton.titleLabel?.textAlignment = NSTextAlignment.Center;
        myButton.titleLabel?.textColor = UIColor.whiteColor();
        myButton.layer.position = CGPointMake(self.view.frame.width/2, 200);
        myButton.backgroundColor = UIColor.greenColor();
        myButton.addTarget(self, action: Selector("onClick:"), forControlEvents: .TouchUpInside);
        self.view.addSubview(myButton);
    }
    
    func onClick(sender:UIButton){
    
        var myAlert = UIAlertController(title: "UIKitDemo", message: "メッセージ", preferredStyle: UIAlertControllerStyle.ActionSheet);
        
        
        let myAction_1 = UIAlertAction(title: "Yes", style: UIAlertActionStyle.Default, handler: {(action: UIAlertAction!) in self.myLabel.text = "Yes"})
        
        let myAction_2 = UIAlertAction(title: "No", style: UIAlertActionStyle.Destructive, handler: {
            (action: UIAlertAction!) in
            self.myLabel.text = "No";
        })
        
        let myAction_3 = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: {
            (action: UIAlertAction!) in
            self.myLabel.text = "Cancel";
        })
        
        myAlert.addAction(myAction_1);
        myAlert.addAction(myAction_2);
        myAlert.addAction(myAction_3);
        
        myAlert.popoverPresentationController?.sourceView = self.view;
        myAlert.popoverPresentationController?.sourceRect = CGRectMake(100.0, 100.0, self.view.frame.width/2, 20.0);
        
        self.presentViewController(myAlert, animated: true, completion: nil);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
