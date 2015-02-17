//
//  UISearchBarVC.swift
//  UIKitDemo
//
//  Created by Kyrie Miyajima on 2015/02/13.
//  Copyright (c) 2015年 Kirie Miyajima. All rights reserved.
//

import UIKit

class UISearchBarViewController: UIViewController, UISearchBarDelegate {
    
    var mySearchBar:UISearchBar!
    var myLabel:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.title = "UISearchbar";
        self.view.backgroundColor = UIColor.whiteColor();
        
        mySearchBar = UISearchBar();
        mySearchBar.delegate = self;
        mySearchBar.frame = CGRectMake(0, 64, self.view.frame.width, 80);
        mySearchBar.showsCancelButton = true;
        mySearchBar.showsBookmarkButton = false;
        mySearchBar.searchBarStyle = UISearchBarStyle.Default;
        mySearchBar.prompt = "タイトル";
        mySearchBar.placeholder = "ここに入力";
        mySearchBar.tintColor = UIColor.redColor();
        self.view.addSubview(mySearchBar);
        
        myLabel = UILabel(frame: CGRectMake(0, 0, 300, 150));
        myLabel.textAlignment = NSTextAlignment.Center;
        myLabel.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2);
        self.view.addSubview(myLabel);
    }
    
    func searchBar(searchBar: UISearchBar, textDidChange searchText: String) {
        myLabel.text = searchText;
    }
    
}
