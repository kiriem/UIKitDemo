//
//  UIActivityIndicatorVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIActivityIndicatorViewController: UIViewController {
    
    var myActivityIndicator: UIActivityIndicatorView!
    var myButton:UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIActivityIndicator";
        self.view.backgroundColor = UIColor.whiteColor();
        
        myActivityIndicator = UIActivityIndicatorView();
        myActivityIndicator.frame = CGRectMake(0, 0, 50, 50);
        myActivityIndicator.center = self.view.center;
        myActivityIndicator.hidesWhenStopped = false;
        myActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray;
        myActivityIndicator.startAnimating();
        self.view.addSubview(myActivityIndicator);
        
        myButton = UIButton(frame: CGRectMake(0, 0, 300, 50));
        myButton.backgroundColor = UIColor.redColor();
        myButton.setTitle("STOP", forState: .Normal);
        myButton.setTitleColor(UIColor.whiteColor(), forState: .Normal);
        myButton.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height-50);
        myButton.addTarget(self, action: "onClick:", forControlEvents: .TouchUpInside);
        self.view.addSubview(myButton);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }

    func onClick(sender:UIButton){
        let isAnimate:Bool = myActivityIndicator.isAnimating();
        
        if isAnimate == true{
            myActivityIndicator.stopAnimating();
            myButton.setTitle("START", forState: .Normal);
            myButton.backgroundColor = UIColor.greenColor();
        }else{
            myActivityIndicator.startAnimating();
            myButton.setTitle("STOP", forState: .Normal);
            myButton.backgroundColor = UIColor.redColor();
        }
    }

}


