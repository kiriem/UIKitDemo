//
//  UITableViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UITableViewController:UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let myItems:NSArray = ["飯島巧", "加藤遼", "北原成貴", "鈴木貴也", "米倉幹麿", "宮島衣瑛"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UITableView";
        
        let barHeight:CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height;
        let displayWidth:CGFloat = self.view.frame.width;
        let displayHeight:CGFloat = self.view.frame.height;
        
        let tableView:UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight));
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell");
        tableView.dataSource = self;
        tableView.delegate = self;
        self.view.addSubview(tableView);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        println("Num:\(indexPath.row)");
        println("Value:\(myItems[indexPath.row])");
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myItems.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath)as UITableViewCell;
        cell.textLabel!.text = "\(myItems[indexPath.row])"
        return cell;
    }

    
}


