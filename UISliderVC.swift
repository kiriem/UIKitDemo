//
//  UISliderVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UISliderViewController: UIViewController {
    
    var red:CGFloat = 0.5
    var green:CGFloat = 0.5
    var blue:CGFloat = 0.5
    
    let redLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 150, 50));
    let greenLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 150, 50));
    let blueLabel:UILabel = UILabel(frame: CGRectMake(0, 0, 150, 50));


    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UISlider";
        
        redLabel.text = "RED:0.5";
        redLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: 250);
        redLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(redLabel);
        
        let myRedSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        myRedSlider.layer.position = CGPoint(x: self.view.frame.midX, y: 300);
        myRedSlider.minimumValue = 0;
        myRedSlider.maximumValue = 1;
        myRedSlider.value = 0.5;
        myRedSlider.maximumTrackTintColor = UIColor.grayColor();
        myRedSlider.minimumTrackTintColor = UIColor.redColor();
        myRedSlider.addTarget(self, action: "changeSlider:", forControlEvents: UIControlEvents.ValueChanged);
        myRedSlider.tag = 0;
        self.view.addSubview(myRedSlider);
        
        
        greenLabel.text = "GREEN:0.5";
        greenLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: 350);
        greenLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(greenLabel);
        
        let myGreenSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        myGreenSlider.layer.position = CGPoint(x: self.view.frame.midX, y: 400);
        myGreenSlider.minimumValue = 0;
        myGreenSlider.maximumValue = 1;
        myGreenSlider.value = 0.5;
        myGreenSlider.maximumTrackTintColor = UIColor.grayColor();
        myGreenSlider.minimumTrackTintColor = UIColor.greenColor();
        myGreenSlider.addTarget(self, action: "changeSlider:", forControlEvents: UIControlEvents.ValueChanged);
        myGreenSlider.tag = 1;
        self.view.addSubview(myGreenSlider);
        
        blueLabel.text = "BLUE:0.5";
        blueLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: 450);
        blueLabel.textAlignment = NSTextAlignment.Center;
        self.view.addSubview(blueLabel);
        
        let myBlueSlider:UISlider = UISlider(frame: CGRectMake(0, 0, 200, 30));
        myBlueSlider.layer.position = CGPoint(x: self.view.frame.midX, y: 500);
        myBlueSlider.minimumValue = 0;
        myBlueSlider.maximumValue = 1;
        myBlueSlider.value = 0.5;
        myBlueSlider.maximumTrackTintColor = UIColor.grayColor();
        myBlueSlider.minimumTrackTintColor = UIColor.blueColor();
        myBlueSlider.addTarget(self, action: "changeSlider:", forControlEvents: UIControlEvents.ValueChanged);
        myBlueSlider.tag = 2;
        self.view.addSubview(myBlueSlider);
        
        
        self.view.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1);
        
    }
    
    func changeSlider(sender: UISlider){
        
        switch sender.tag{
        case 0:
            red = CGFloat(sender.value);
            redLabel.text = "RED:\(red)";
        case 1:
            green = CGFloat(sender.value);
            greenLabel.text = "GREEN:\(green)";
        case 2:
            blue = CGFloat(sender.value);
            blueLabel.text = "BLUE:\(blue)";
        default:
            println("Error");
            break;
        }
        
        self.view.backgroundColor = UIColor(red: red, green: green, blue:blue, alpha: 1);
        
    }
    
}
