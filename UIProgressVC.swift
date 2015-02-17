//
//  UIProgressVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/14.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIProgresViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIProgressView";
        self.view.backgroundColor = UIColor.whiteColor();
        
        var myProgressView:UIProgressView = UIProgressView(frame: CGRectMake(0, 0, 200, 10));
        myProgressView.progressTintColor = UIColor.greenColor();
        myProgressView.layer.position = CGPoint(x: self.view.frame.width/2, y: 200);
        myProgressView.transform = CGAffineTransformMakeScale(1.0, 2.0);
        myProgressView.progress = 0.3;
        myProgressView.setProgress(5.0, animated: true);
        self.view.addSubview(myProgressView);
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
