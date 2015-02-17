//
//  UITableViewSection.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit
class UITableViewSection:UITableViewController, UITableViewDelegate, UITableViewDataSource{
    
    //セルの中身
    let iphoneItems:NSArray = ["iPhone6", "iPhone6 Plus", "iPhone5S", "iPhone5C", "iPhone5", "iPhone4S", "iPhone4", "iPhone3G"];
    let ipadItems:NSArray = ["iPad Air 2", "iPad Air", "iPad4", "the new iPad", "iPad2", "iPad"];
    let ipadMiniItems:NSArray = ["iPad mini2", "iPad mini"];
    let ipodTouchItems:NSArray = ["iPodTouch5th", "iPodTouch4th", "iPodTouch3rd", "iPodTouch2nd", "iPodTouch"];
    let macItems:NSArray = ["MacBookAir", "MacBookPro", "Mac mini", "iMac", "MacPro"];
    
    //セクションアイテム
    let mySections:NSArray = ["iPhone", "iPad", "iPadmini", "iPodTouch", "Mac"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        let barHeight:CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height;
        let displayWidth:CGFloat = self.view.frame.width;
        let displayHeight:CGFloat = self.view.frame.height;
        
        let myTableView:UITableView = UITableView(frame: CGRect(x: 0, y: 62, width: displayWidth, height: displayHeight));
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell");
        myTableView.dataSource = self;
        myTableView.delegate = self;
        self.view.addSubview(myTableView);
        
        for var i=0; i<ipadMiniItems.count; i++ {
            println(ipadMiniItems[i]);
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return mySections.count;
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return mySections[section] as? String;
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("");
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell;
        
        if indexPath.section == 0{
            
            cell.textLabel?.text = "\(iphoneItems[indexPath.row])";
            
        }else if indexPath.section == 1{
            
            cell.textLabel?.text = "\(ipadItems[indexPath.row])";
            
            
        }else if indexPath.section == 2{
            
            cell.textLabel?.text = "\(ipadMiniItems[indexPath.row])";
            
        }else if indexPath.section == 3{
            
            cell.textLabel?.text = "\(ipodTouchItems[indexPath.row])";
            
        }else if indexPath.section == 4{
            
            cell.textLabel?.text = "\(macItems[indexPath.row])";
        }
        
        return cell;
    }
    
}
