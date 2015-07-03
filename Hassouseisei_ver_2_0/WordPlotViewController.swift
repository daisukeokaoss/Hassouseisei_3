//
//  WordPlotViewController.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/07/01.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//
import UIKit

class WordPlotViewController: UIViewController {


    
    @IBOutlet weak var myWordPlotScrollView: WordPlotScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myWordPlotScrollView.superViewController = self
        
        
    }
    
    override func willRotateToInterfaceOrientation(toInterfaceOrientation: UIInterfaceOrientation, duration: NSTimeInterval) {
        if  (UIDevice.currentDevice().userInterfaceIdiom == .Pad) {
            if(toInterfaceOrientation == UIInterfaceOrientation.LandscapeRight || toInterfaceOrientation == UIInterfaceOrientation.LandscapeLeft){
                self.myWordPlotScrollView.drawUserInterface(height: UIScreen.mainScreen().bounds.width, width: UIScreen.mainScreen().bounds.height)
            }else{
                self.myWordPlotScrollView.drawUserInterface(height: UIScreen.mainScreen().bounds.width, width: UIScreen.mainScreen().bounds.height)
            }
        
        }
        
    }

}
