//
//  UITableViewButtonVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/16.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UITableViewButtonViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var myItems:[String] = ["C", "C++", "C#", "D", "SmallTalk","Objective-C", "Swift", "Ruby", "Python", "Go", "PHP", "Java"];
    var myTableView:UITableView = UITableView();
    
    override func viewDidLoad() {
        
        self.title = "UITableViewButton";
        self.view.backgroundColor = UIColor.whiteColor();
        
        super.viewDidLoad()
        
        let barHeight: CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height
        
        let displayWidth: CGFloat = self.view.frame.width
        let displayHeight: CGFloat = self.view.frame.height
        
        myTableView.frame = CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight - barHeight)
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("Num: \(indexPath.row)")
        println("Value: \(myItems[indexPath.row])")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("numberOfRowsInSection")
        return myItems.count
    }

    func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        println("canEditRowAtIndexPath")
        
        return true
    }

    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        println("commitEdittingStyle:\(editingStyle)")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("cellForRowAtIndexPath")
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("MyCell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = "\(myItems[indexPath.row])"
        
        return cell
    }

    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [AnyObject]? {

        var myShareButton: UITableViewRowAction = UITableViewRowAction(style: .Normal, title: "Share") { (action, index) -> Void in
            
            tableView.editing = false
            println("share")
            
        }
        myShareButton.backgroundColor = UIColor.blueColor()
        

        var myArchiveButton: UITableViewRowAction = UITableViewRowAction(style: .Normal, title: "Archive") { (action, index) -> Void in
            
            tableView.editing = false
            println("archive")
            
        }
        myArchiveButton.backgroundColor = UIColor.redColor()
        
        return [myShareButton, myArchiveButton]
    }
    
}

    

