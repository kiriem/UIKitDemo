//
//  UILocalNotificationViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UILocalNotificationViewController:UIViewController{
    
    var myNotificationButton:UIButton!
    var myNotificationFireButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UILocalNotification";
        self.view.backgroundColor = UIColor.whiteColor();
        
        let displayWidth:CGFloat = self.view.frame.width;
        let displayHeight:CGFloat = self.view.frame.height;
        
        UIApplication.sharedApplication().registerUserNotificationSettings(UIUserNotificationSettings(forTypes: UIUserNotificationType.Sound | UIUserNotificationType.Alert, categories: nil));
        
        myNotificationButton = UIButton(frame: CGRectMake(0, 0, 200, 80));
        myNotificationButton.backgroundColor = UIColor.blueColor();
        myNotificationButton.setTitle("すぐに通知", forState: .Normal);
        myNotificationButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        myNotificationButton.layer.position = CGPoint(x: displayWidth/2, y: 150);
        myNotificationButton.addTarget(self, action: Selector("onClick:"), forControlEvents: .TouchUpInside);
        myNotificationButton.tag = 1;
        
        
        myNotificationFireButton = UIButton(frame: CGRectMake(0, 0, 200, 80));
        myNotificationFireButton.setTitle("5秒後に通知", forState: UIControlState.Normal);
        myNotificationFireButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal);
        myNotificationFireButton.backgroundColor = UIColor.redColor();
        myNotificationFireButton.layer.position = CGPoint(x: displayWidth/2, y: 300);
        myNotificationFireButton.addTarget(self, action: Selector("onClick:"), forControlEvents: .TouchUpInside);
        myNotificationFireButton.tag = 2;
        
        self.view.addSubview(myNotificationButton);
        self.view.addSubview(myNotificationFireButton);
        
    }
    
    func onClick(sender:UIButton){
        if sender.tag == 1{
            showNotification();
        }else if sender.tag  == 2{
            showNotificationFire();
        }
    }
    
    private func showNotification(){
        let myNotification:UILocalNotification = UILocalNotification();
        myNotification.alertBody = "Let's study Swift!";
        myNotification.timeZone = NSTimeZone.defaultTimeZone();
        UIApplication.sharedApplication().scheduleLocalNotification(myNotification);
    }
    
    private func showNotificationFire(){
        let myNotification:UILocalNotification = UILocalNotification();
        myNotification.alertBody = "Let's study Swift!";
        myNotification.soundName = UILocalNotificationDefaultSoundName;
        myNotification.timeZone = NSTimeZone.defaultTimeZone();
        myNotification.fireDate = NSDate(timeIntervalSinceNow: 5);
        UIApplication.sharedApplication().scheduleLocalNotification(myNotification);
    }
    
    
    
    
    
}
