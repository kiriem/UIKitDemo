//
//  UIImageViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/08.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIImageViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UIImageView";
        self.view.backgroundColor = UIColor.whiteColor();3
        
        //ImageViewの定義
        let myImageView:UIImageView = UIImageView(frame: CGRectMake(0, 0, 100, 100));
        let myImage:UIImage = UIImage(named: "logo.png")!;
        
        myImageView.image = myImage;
        myImageView.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height/2);
        self.view.addSubview(myImageView);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();
    }
    
    

}