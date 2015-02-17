//
//  UITabBarFirst.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class FirstTab:UIViewController{
    override init(){
        super.init();
        self.view.backgroundColor = UIColor.whiteColor();
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.More, tag: 1);
    }
    
    required init(coder aDecoder:NSCoder){
        super.init(coder: aDecoder);
    }
    
    required override init(nibName nibnameOrNil: String!, bundle nibBundleOrNil:NSBundle!){
     //   super.init(nibName: nibBundleOrNil, bundle: nilBundleOrNil);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
}
