//
//  UITableViewSection.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UITableViewSection: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let iPhoneItems:[String] = ["iPhone3G", "iPhone3GS", "iPhone4", "iPhone4S", "iPhone5", "iPhone5C", "iPhone5S", "iPhone6", "iPhone6 plus", "iPhone6S", "iPhone6S plus"]
    
    private let iPadItems:[String] = ["iPad", "iPad2", "new iPad", "iPad4", "iPad Air", "iPad Air2", "iPad Pro"]
    
    private let iPadMiniItems:[String] = ["iPad mini", "iPad mini2", "iPad mini3"]
    
    private let iPodItems:[String] = ["iPod", "iPod shuffle", "iPod classic", "iPod nano", "iPod touch"]
    
    private let MacItems:[String] = ["MacBook", "MacBook Air", "MacBook Pro", "iMac", "Mac mini", "Mac Pro"]

    private let appleTVItems:[String] = ["AppleTV Ⅰ", "AppleTV Ⅱ"]
    
    private let watchItems:[String] = ["AppleWatch Sports", "AppleWatch", "Apple Watch Edition" , "AppleWatch hermes"]
    
    private let sectionItems:[String] = ["iPhone", "iPad", "iPad mini", "iPod", "Mac", "TV", "Watch"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "UITableViewSection"
        
        let myTableView:UITableView = UITableView(frame: self.view.frame)
        
        //myTableView.registerClass(UITableViewCell.self, forHeaderFooterViewReuseIdentifier: "MyCell")
        
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell")
        
        myTableView.dataSource = self
        myTableView.delegate = self
        self.view.addSubview(myTableView)

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return sectionItems.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionItems[section];
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var num:Int = 0
        
        switch section{
        case 0:
            num = iPhoneItems.count
        case 1:
            num = iPadItems.count
        case 2:
            num = iPadMiniItems.count
        case 3:
            num = iPodItems.count
        case 4:
            num = MacItems.count
        case 5:
            num = appleTVItems.count
        case 6:
            num = watchItems.count
        default:
            num = 0
        }
        
        return num
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "MyCell")
        
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = iPhoneItems[indexPath.row]
        case 1:
            cell.textLabel?.text = iPadItems[indexPath.row]
        case 2:
            cell.textLabel?.text = iPadMiniItems[indexPath.row]
        case 3:
            cell.textLabel?.text = iPodItems[indexPath.row]
        case 4:
            cell.textLabel?.text = MacItems[indexPath.row]
        case 5:
            cell.textLabel?.text = appleTVItems[indexPath.row]
        case 6:
            cell.textLabel?.text = watchItems[indexPath.row]
        default :
            print("Error")
        }

        return cell
        
    }
    
}