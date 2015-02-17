//
//  UISegmentedControllerVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/14.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UISegmentedViewController: UIViewController {
    let mySegLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 100, 100));
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UISegmentedController"
        self.view.backgroundColor = UIColor.whiteColor();
        
        let myArray:NSArray = ["Red", "Blue", "Green"];
        
        let mySegcon:UISegmentedControl = UISegmentedControl(items: myArray);
        mySegcon.center = CGPoint(x: self.view.frame.width/2, y: 400);
        mySegcon.addTarget(self, action: "segconChanged:", forControlEvents: UIControlEvents.ValueChanged);
        mySegcon.tintColor = UIColor.grayColor();
        self.view.addSubview(mySegcon);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func segconChanged(segcon: UISegmentedControl){
        switch(segcon.selectedSegmentIndex){
        case 0:
            self.view.backgroundColor = UIColor.redColor();
        case 1:
            self.view.backgroundColor = UIColor.blueColor();
        case 2:
            self.view.backgroundColor = UIColor.greenColor();
        default:
            println("Error");
            break;
        }
        
    }
}