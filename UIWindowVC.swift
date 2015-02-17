//
//  UIWindowVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIWindowViewController: UIViewController {
    
    var myWindow = UIWindow();
    var closeButton = UIButton();
    var openButton = UIButton();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIWindow";
        self.view.backgroundColor = UIColor.blackColor();
        /*
        let myImage:UIImage! = UIImage(named: "swiftLogo.jpeg");
        let myImageView:UIImageView = UIImageView(frame: CGRectMake(0, 0, 150, 150));
        myImageView.image = myImage;
        myImageView.layer.position = CGPoint(x: self.view.frame.width/2, y: 200);
        self.view.addSubview(myImageView);
        */
        
        openButton.frame = CGRectMake(0, 0, 60, 60);
        openButton.backgroundColor = UIColor.greenColor();
        openButton.setTitle("起動", forState: .Normal);
        openButton.setTitleColor(UIColor.whiteColor(), forState: .Normal);
        openButton.layer.position = CGPoint(x: self.view.frame.width/2, y: 500);
        openButton.addTarget(self, action: "onClickOpen:", forControlEvents: .TouchUpInside);
        self.view.addSubview(openButton);
        
    }
    
    func makeWindow(){
        myWindow.backgroundColor = UIColor.whiteColor();
        myWindow.frame = CGRectMake(0, 0, 200, 250);
        myWindow.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2);
        myWindow.alpha = 0.8;
        myWindow.layer.cornerRadius = 20;
        myWindow.makeKeyWindow();
        self.myWindow.makeKeyAndVisible();
        
        closeButton.frame = CGRectMake(0, 0, 100, 60);
        closeButton.backgroundColor = UIColor.orangeColor();
        closeButton.setTitle("Close", forState: .Normal);
        closeButton.setTitleColor(UIColor.whiteColor(), forState: .Normal);
        closeButton.layer.position = CGPointMake(self.myWindow.frame.width/2, self.myWindow.frame.height-50);
        closeButton.addTarget(self, action: "onClickOpen:", forControlEvents: .TouchUpInside);
        self.myWindow.addSubview(closeButton);
        
        let myTextView:UITextView = UITextView(frame: CGRectMake(10, 10, self.myWindow.frame.width-20, 150));
        myTextView.backgroundColor = UIColor.clearColor();
        myTextView.text = "SwiftはApple社のiOS及びOSX用のプログラミング言語である。";
        myTextView.font = UIFont.systemFontOfSize(CGFloat(15));
        myTextView.textColor = UIColor.blackColor();
        myTextView.textAlignment = NSTextAlignment.Left;
        myTextView.editable = false;
        self.myWindow.addSubview(myTextView);
        
    }
    
    func onClickOpen(sender:UIButton){
        if sender == closeButton{
            myWindow.hidden = true;
        }else if sender == openButton{
            makeWindow();
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}