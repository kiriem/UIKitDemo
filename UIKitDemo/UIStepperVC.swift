//
//  UIStepperVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/14.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIStepperViewController: UIViewController {
    
    let countLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 100));
    var countNum:Int! = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIStepper";
        self.view.backgroundColor = UIColor.whiteColor();
        
        let myStepper:UIStepper = UIStepper();
        myStepper.center = CGPointMake(self.view.frame.width/2, 400);
        myStepper.backgroundColor = UIColor.grayColor();
        myStepper.tintColor = UIColor.whiteColor();
        myStepper.addTarget(self, action: "stepperOn:", forControlEvents: UIControlEvents.ValueChanged);
        myStepper.minimumValue = 0;
        myStepper.stepValue = 1;
        self.view.addSubview(myStepper);
        
        countLabel.font = UIFont.systemFontOfSize(32);
        countLabel.layer.position = CGPointMake(self.view.frame.width/2, 200);
        countLabel.text = String(countNum);
        countLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(countLabel);
    }
    
    func stepperOn(stepper: UIStepper){
        countLabel.text = "\(stepper.value)";
    }
}
