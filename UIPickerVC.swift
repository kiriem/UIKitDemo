//
//  UIPickerViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    var myUIPicker:UIPickerView = UIPickerView();
    var myValues:NSArray = ["飯島巧", "加藤遼", "北原成貴", "鈴木貴也", "米倉幹麿", "宮島衣瑛"];
    let myLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 300, 100));
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIPickerView";
        self.view.backgroundColor = UIColor.whiteColor();
        
        myUIPicker.frame = CGRectMake(0, 200, self.view.bounds.width, 360);
        myUIPicker.delegate = self;
        myUIPicker.dataSource = self;
        self.view.addSubview(myUIPicker);
        
        myLabel.textAlignment = NSTextAlignment.Center;
        myLabel.textColor = UIColor.blueColor();
        myLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: 100);
        self.view.addSubview(myLabel);
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return myValues.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return myValues[row] as String;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        myLabel.text = "選択：\(myValues[row])";
        
        println("row:\(row)");
        println("value:\(myValues[row])");
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
}
