//
//  UIDatePickerVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIDatePickerViewController: UIViewController, UIPickerViewDelegate {
    
    var dateLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 100));
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIDatePicker";
        self.view.backgroundColor = UIColor.whiteColor();
        
        //datePicker
        var myDatePicker:UIDatePicker = UIDatePicker();
        myDatePicker.frame = CGRectMake(0, self.view.frame.height/4, 0, 0);
        myDatePicker.timeZone = NSTimeZone.localTimeZone();
        myDatePicker.addTarget(self, action: "changePicker:", forControlEvents: .ValueChanged);
        self.view.addSubview(myDatePicker);
        
        //ラベル
        dateLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: 500);
        dateLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(dateLabel);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func changePicker(sender: UIDatePicker){
        let myDateFormatter:NSDateFormatter = NSDateFormatter();
        myDateFormatter.dateFormat = "yyyy/MM/dd hh:mm";
        var mySelectedDate:NSString = myDateFormatter.stringFromDate(sender.date);
        dateLabel.text = mySelectedDate;
    }
}
