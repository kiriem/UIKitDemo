//
//  UIWebViewController.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/09.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UIWebViewController: UIViewController, UIWebViewDelegate {
    let myWebView:UIWebView = UIWebView();
    
    override func viewDidLoad() {
        super.viewDidLoad();
        myWebView.delegate = self;
        myWebView.frame = self.view.bounds;
        self.view.addSubview(myWebView);
        
        let url:NSURL = NSURL(string: "http://www.apple.com/jp")!;
        let request:NSURLRequest = NSURLRequest(URL: url);
        
        myWebView.loadRequest(request);
    }
}
