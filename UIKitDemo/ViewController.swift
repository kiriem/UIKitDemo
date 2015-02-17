
//
//  ViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/08.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    let myItems:NSArray = ["UILabel", "UIButton", "UITextField", "UIImageView","UITableView", "UILocalNitification", "UIWebView", "UIAlertController", "UIPickerView", "UINavigationController", "UIBarButtonItem", "UIPageControll", "UISlider", "UISwitch", "UIDatePicker", "UIActivityIndicator", "UISearchBar", "UIWindow", "UIProgressView", "UISegmentedController", "UIStepper", "UIAlertController", "UITableViewButton"];
    
    override func viewDidLoad() {
        super.viewDidLoad();
    
        self.navigationController?.setNavigationBarHidden(false, animated: true);
        self.title = "UIKit";

        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor();
        self.navigationController?.navigationBar.barTintColor = UIColor(red:1, green:0.27, blue:0, alpha:1);
        let barHeight:CGFloat = UIApplication.sharedApplication().statusBarFrame.size.height;
        let displayWidth:CGFloat = self.view.frame.width;
        let displayHeight:CGFloat = self.view.frame.height;
        
        let myTableView:UITableView = UITableView(frame: CGRect(x: 0, y: 0, width: displayWidth, height: displayHeight));
        myTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "MyCell");
        myTableView.dataSource = self;
        myTableView.delegate = self;
        self.view.addSubview(myTableView);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        switch indexPath.row{
        case 0:
            let uiLabelView = UILabelViewController();
            self.navigationController?.pushViewController(uiLabelView, animated: true);
        case 1:
            let UIButtonView = UIButtonViewController();
            self.navigationController?.pushViewController(UIButtonView, animated: true);
        case 2:
            let UITextField = UITextFieldViewController();
            self.navigationController?.pushViewController(UITextField, animated: true);
        case 3:
            let UIImageView = UIImageViewController();
            self.navigationController?.pushViewController(UIImageView, animated: true);
        case 4:
            let UITableView = UITableViewController();
            self.navigationController?.pushViewController(UITableView, animated:true);
        case 5:
            let UIlocalNotificationView = UILocalNotificationViewController();
            self.navigationController?.pushViewController(UIlocalNotificationView, animated: true);
        case 6:
            let UIWebView = UIWebViewController();
            self.navigationController?.pushViewController(UIWebView, animated: true);
           
        case 7:
            let UIAlertView = UIAlertViewController();
            self.navigationController?.pushViewController(UIAlertView, animated: true);
        
        case 8:
            let UIPickerVC = UIPickerViewController();
            self.navigationController?.pushViewController(UIPickerVC, animated: true);
            
        case 9:
            let UINavigationControllerView = UINavigationViewController();
            self.navigationController?.pushViewController(UINavigationControllerView, animated: true);
            
        case 10:
            let UIBarButtonView = UIBarButtonItemViewController();
            self.navigationController?.pushViewController(UIBarButtonView, animated: true);
            
        case 11:
            let UIPageControllerView = UIPageControllerViewController();
            self.navigationController?.pushViewController(UIPageControllerView, animated: true);
        case 12:
            let UISliderVC = UISliderViewController();
            self.navigationController?.pushViewController(UISliderVC, animated: true);

        case 13:
            let UISwitchVC = UISwitchViewController();
            self.navigationController?.pushViewController(UISwitchVC, animated: true);
            
        case 14:
            let UIDatePickerVC = UIDatePickerViewController();
            self.navigationController?.pushViewController(UIDatePickerVC, animated: true);
        case 15:
            let UIActivityIndicatorVC = UIActivityIndicatorViewController();
            self.navigationController?.pushViewController(UIActivityIndicatorVC, animated: true);
        case 16:
            let UISearchBarVC = UISearchBarViewController();
            self.navigationController?.pushViewController(UISearchBarVC, animated: true);
        case 17:
            let UIWindowVC = UIWindowViewController();
            self.navigationController?.pushViewController(UIWindowVC, animated: true);
        case 18:
            let UIProgressVC = UIProgresViewController();
            self.navigationController?.pushViewController(UIProgressVC, animated: true);
        case 19:
            let UISegconVC = UISegmentedViewController();
            self.navigationController?.pushViewController(UISegconVC, animated: true);
        case 20:
            let UIStepperVC = UIStepperViewController();
            self.navigationController?.pushViewController(UIStepperVC, animated: true);
        case 21:
            let UIAlertActionVC = UIAlertActionViewController();
            self.navigationController?.pushViewController(UIAlertActionVC, animated: true);
        case 22:
            let UITableViewButtonVC = UITableViewButtonViewController();
            self.navigationController?.pushViewController(UITableViewButtonVC, animated: true);
        default:
            println("Error");
            break;
            
        }
        
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

