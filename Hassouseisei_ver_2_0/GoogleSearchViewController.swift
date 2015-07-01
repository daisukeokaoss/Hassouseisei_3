//
//  GoogleSearchViewCooontroller.swift
//  GoogleSearchByUISearchBar_Swift
//
//  Created by 岡大輔 on 2015/03/01.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

import UIKit

enum CountryOfGoogleSite{
    case JapaneseGoogle
    case AmericalGoogle
    case defaultGoogle
}

class GoogleSearchViewColtroller : UIViewController
{
    var webView:UIWebView = UIWebView()
    var SearchString:String?
    var btn:UIButton?
    

    var googlesite:CountryOfGoogleSite = .JapaneseGoogle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.webView.frame = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y + 80
            , self.view.bounds.size.width, self.view.bounds.size.height-80)
        webView.autoresizingMask = UIViewAutoresizing()
        webView.scalesPageToFit  = true
        self.view.addSubview(webView)
        
        var query:String? = self.SearchString?.stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())
        
        var url:String?
        if(self.googlesite == .JapaneseGoogle){
            url = "http://www.google.co.jp/m/search?q=" + query!
        }else if(self.googlesite == .AmericalGoogle){
            url = "http://www.google.com/m/search?q=" + query!
        }else {
            url = "http://www.google.co.jp/m/search?q=" + query!
        }
        
        var request:NSURLRequest = NSURLRequest(URL:NSURL(string:url!)!)
        
        webView.loadRequest(request)
        
        btn = UIButton()
        btn?.frame = CGRectMake(0, 20, self.view.bounds.size.width, 60)
        btn?.backgroundColor = UIColor.grayColor()
        
        btn?.setTitle("戻る", forState: UIControlState.Normal)
        btn?.setTitle("戻る", forState: UIControlState.Highlighted)
        btn?.setTitle("戻る", forState: UIControlState.Disabled)
        btn?.addTarget(self, action:"ReturnBack" , forControlEvents: UIControlEvents.TouchDown)
        self.view.addSubview(btn!)
    }
    func ReturnBack(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}


