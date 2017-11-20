//
//  BeerChipSDKViewController.swift
//  BeerChipSDK_Swift
//
//  Created by Vmoksha on 20/11/17.
//  Copyright © 2017 vmoksha. All rights reserved.
//

import Foundation

import UIKit

public class BeerChipSDKViewController: UIViewController ,UIWebViewDelegate {
    
    var  beerViewController = UIViewController()
    
    let activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: UIActivityIndicatorViewStyle.gray)
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    public func beerProjectButtonAction(viewController:UIViewController){
        
        beerViewController = viewController
        
        let mainView = UIView()
        mainView.frame = CGRect(x: 0, y: 0, width: beerViewController.view.frame.width, height: beerViewController.view.frame.height)
        mainView.backgroundColor = UIColor.white
        beerViewController.view.addSubview(mainView)
        
        activityIndicator.center = self.view.center
        activityIndicator.transform =  CGAffineTransform(scaleX: 2.00, y: 2.00);
        activityIndicator.color = UIColor.darkGray
        activityIndicator.alpha = 1.0;
        mainView.addSubview(activityIndicator)
        UIApplication.shared.keyWindow?.addSubview(activityIndicator)
        UIApplication.shared.keyWindow?.bringSubview(toFront: activityIndicator)
        activityIndicator.startAnimating()
        
        
        let subView = UIView()
        subView.frame = CGRect(x: 0, y: 0, width: mainView.frame.size.width-30, height: mainView.frame.size.height-60)
        subView.backgroundColor = UIColor.white
        mainView.addSubview(subView)
        
        
        let webView    = UIWebView()
        webView.frame  = CGRect(x: 30, y: 60, width: subView.frame.size.width-30, height:subView.frame.size.height-60)
        webView.loadRequest(NSURLRequest(url: NSURL(string: "http://d2z3o9iciufzel.cloudfront.net/1033/21")! as URL) as URLRequest)
        webView.delegate = self
        subView.addSubview(webView)
        subView.clipsToBounds = true
    }
    
    public func webViewDidStartLoad(_ webView: UIWebView)
    {
        activityIndicator.startAnimating()
        print("start")
    }
    
    public func webViewDidFinishLoad(_ webView: UIWebView)
    {
        print("end")
        activityIndicator.stopAnimating()
    }
    
    public func webView(_ webView: UIWebView, didFailLoadWithError error: Error)
    {
        print("%@",[error .localizedDescription])
    }
    
    public func beerProjectButtonActionForUserDeatiles(userInfo:NSDictionary){
        
        print(userInfo)
        
    }
    
    

}

