//
//  UIPageControllerViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIPageControllerViewController: UIViewController, UIScrollViewDelegate {
    var pageControl:UIPageControl!
    var scrollView:UIScrollView!
    
    override func viewDidLoad() {
        let width = self.view.frame.maxX
        let height = self.view.frame.maxY;
        
        self.title = "UIPageControll";
        self.view.backgroundColor = UIColor.whiteColor();
        
        scrollView = UIScrollView(frame: self.view.frame);
        let pageSize = 4;
        
        scrollView.showsHorizontalScrollIndicator = false;
        scrollView.showsVerticalScrollIndicator = false;
        
        scrollView.pagingEnabled = true;
        scrollView.delegate = self;
        scrollView.contentSize = CGSizeMake(CGFloat(pageSize) * width, 0);
        self.view.addSubview(scrollView);
        
        for var i=0; i<pageSize; i++ {
            let myLabel:UILabel = UILabel(frame: CGRectMake(CGFloat(i) * width + width/2 - 40, height/2 - 40, 80, 80));
            myLabel.backgroundColor = UIColor.greenColor();
            myLabel.textColor = UIColor.whiteColor();
            myLabel.textAlignment = NSTextAlignment.Center;
            //myLabel.layer.position = CGPoint(x: self.view.bounds.width/2, y: 200);
            myLabel.text = String(i+1);
            myLabel.font = UIFont.systemFontOfSize(40);
            
            scrollView.addSubview(myLabel);
        }
        
        pageControl = UIPageControl(frame: CGRectMake(0, self.view.frame.maxY - 100, width, 50));
        pageControl.backgroundColor = UIColor.orangeColor();
        pageControl.numberOfPages = pageSize;
        pageControl.currentPage = 0;
        pageControl.userInteractionEnabled = false;
        self.view.addSubview(pageControl);
        
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0{
            pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX);
        }
    }
}
