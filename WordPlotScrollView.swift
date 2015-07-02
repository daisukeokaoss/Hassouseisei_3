//
//  WordPlotScrollView.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/04.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit



class WordPlotScrollView: UIScrollView {
    
    var superViewController:UIViewController!
    
    var DrawedFlag = false

    
    
    var generateButton:DOFlatButton!
    var Label1st:UILabel!
    var Label2nd:UILabel!
    var Label3rd:UILabel!
    var Label4th:UILabel!
    var Label5th:UILabel!
    var Label6th:UILabel!
    var Label7th:UILabel!
    var Label8th:UILabel!
    
    //var generateButton:DOFlatButton
    

    


    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        print("Drowed")
        

        
        if self.DrawedFlag == false {
            self.DrawedFlag = true
        }else{
            return
        }
        

        
        var Row_height = UIScreen.mainScreen().bounds.size.height/13
        var xCoordinateOfStartingWord = rect.width/24
        
        var LabelHeight = CGFloat(30)
        
        
        
        let X_Label = xCoordinateOfStartingWord
        
        let label_width = xCoordinateOfStartingWord*22
        
        
        self.Label1st = UILabel(frame:  CGRectMake(X_Label, Row_height, label_width, LabelHeight))
        self.Label2nd = UILabel(frame:  CGRectMake(X_Label, Row_height*2, label_width, LabelHeight))
        self.Label3rd = UILabel(frame: CGRectMake(X_Label, Row_height*3, label_width, LabelHeight))
        self.Label4th = UILabel(frame: CGRectMake(X_Label, Row_height*4, label_width, LabelHeight))
        self.Label5th = UILabel(frame: CGRectMake(X_Label, Row_height*5, label_width, LabelHeight))
        self.Label6th = UILabel(frame: CGRectMake(X_Label, Row_height*6, label_width, LabelHeight))
        self.Label7th = UILabel(frame: CGRectMake(X_Label, Row_height*7, label_width, LabelHeight))
        self.Label8th = UILabel(frame: CGRectMake(X_Label, Row_height*8, label_width, LabelHeight))
        
        self.Label1st.text = "Label1st"
        self.Label2nd.text = "Label2nd"
        self.Label3rd.text = "Label3rd"
        self.Label4th.text = "Label4th"
        self.Label5th.text = "Label5th"
        self.Label6th.text = "label6th"
        self.Label7th.text = "Label7th"
        self.Label8th.text = "Label8th"
        
        self.Label1st.text = ""
        self.Label2nd.text = ""
        self.Label3rd.text = ""
        self.Label4th.text = ""
        self.Label5th.text = ""
        self.Label6th.text = ""
        self.Label7th.text = ""
        self.Label8th.text = ""
        
        self.Label1st.sizeToFit()
        
        self.contentSize = CGSize(width: X_Label + self.Label1st.sizeThatFits(CGSize(width: 1000, height: 1000)).width, height: self.bounds.size.height)
        //self.sizeThatFits(CGSize(width: X_Label + self.Label1st.bounds.size.width, height: UIScreen.mainScreen().bounds.size.height))
        
        
        self.Label1st.userInteractionEnabled = true
        self.Label2nd.userInteractionEnabled = true
        self.Label3rd.userInteractionEnabled = true
        self.Label4th.userInteractionEnabled = true
        self.Label5th.userInteractionEnabled = true
        self.Label6th.userInteractionEnabled = true
        self.Label7th.userInteractionEnabled = true
        self.Label8th.userInteractionEnabled = true
        
        self.Label1st.tag = 1
        self.Label2nd.tag = 2
        self.Label3rd.tag = 3
        self.Label4th.tag = 4
        self.Label5th.tag = 5
        self.Label6th.tag = 6
        self.Label7th.tag = 7
        self.Label8th.tag = 8
        
        self.addSubview(self.Label1st)
        self.addSubview(self.Label2nd)
        self.addSubview(self.Label3rd)
        self.addSubview(self.Label4th)
        self.addSubview(self.Label5th)
        self.addSubview(self.Label6th)
        self.addSubview(self.Label7th)
        self.addSubview(self.Label8th)
        
        self.generateButton = DOFlatButton()
        
        self.generateButton.frame = CGRectMake(X_Label, Row_height*9, label_width,Row_height*2.85)
        /*self.generateButton.faceColor = UIColor(red: 86.0/255.0, green: 161.0/255.0, blue: 217.0/255.0, alpha: 1.0)
        self.generateButton.sideColor = UIColor(red: 79.0/255.0, green: 127.0/255.0, blue: 179.0/255.0, alpha: 1.0)
        self.generateButton.radius = 8.0
        self.generateButton.margin = 4.0
        self.generateButton.depth  = 3.0*/
        
        self.generateButton.faceColor = UIColor(red: 243.0/255.0, green: 152.0/255.0, blue: 0, alpha: 1.0)
        self.generateButton.sideColor = UIColor(red: 170.0/255.0, green: 105.0/255.0, blue: 0, alpha: 1.0)
        self.generateButton.radius = 6.0
        self.generateButton.margin = 7.0
        self.generateButton.depth  = 6.0
        
        self.generateButton.titleLabel?.font = UIFont.boldSystemFontOfSize(16)
        self.generateButton.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
        self.generateButton.setTitle("Push", forState: UIControlState.Normal)
        
        self.generateButton.addTarget(self, action: "generateButtonClick:", forControlEvents:.TouchDown)
        
        
        
        
        self.addSubview(self.generateButton)
        
        
    }
    
    override func touchesEnded(touches: Set<NSObject>, withEvent event: UIEvent) {
        super.touchesEnded(touches, withEvent: event)
        
        
        var site:CountryOfGoogleSite = .JapaneseGoogle
        
        var ViewController:GoogleSearchViewColtroller = GoogleSearchViewColtroller()
        ViewController.googlesite = site

        
        for touch: AnyObject in touches {
            var t: UITouch = touch as! UITouch
            if t.view.tag == self.Label1st.tag {
                ViewController.SearchString = self.Label1st.text
            }else if t.view.tag == self.Label2nd.tag{
                ViewController.SearchString = self.Label2nd.text
            }else if t.view.tag == self.Label3rd.tag{
                ViewController.SearchString = self.Label3rd.text
            }else if t.view.tag == self.Label4th.tag{
                ViewController.SearchString = self.Label4th.text
            }else if t.view.tag == self.Label5th.tag{
                ViewController.SearchString = self.Label5th.text
            }else if t.view.tag == self.Label6th.tag{
                ViewController.SearchString = self.Label6th.text
            }else if t.view.tag == self.Label7th.tag{
                ViewController.SearchString = self.Label7th.text
            }else if t.view.tag == self.Label8th.tag{
               ViewController.SearchString = self.Label8th.text
            }else{
                return
            }
            
            ViewController.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
            
            self.superViewController.presentViewController(ViewController, animated: true, completion: nil)
        }
    }
    

 
    

    
    @IBAction func generateButtonClick(sender: AnyObject)
    {
        var delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        var WordArray = delegate.wordpoolmanage.outputManyWord(8)
        
        self.Label1st.text = ""
        self.Label2nd.text = ""
        self.Label3rd.text = ""
        self.Label4th.text = ""
        self.Label5th.text = ""
        self.Label6th.text = ""
        self.Label7th.text = ""
        self.Label8th.text = ""
        
        if( WordArray.count > 0){
            
            
            
            self.Label1st.text = WordArray[0]
            self.Label2nd.text = WordArray[1]
            self.Label3rd.text = WordArray[2]
            self.Label4th.text = WordArray[3]
            self.Label5th.text = WordArray[4]
            self.Label6th.text = WordArray[5]
            self.Label7th.text = WordArray[6]
            self.Label8th.text = WordArray[7]
            
            self.Label1st.sizeToFit()
            self.Label2nd.sizeToFit()
            self.Label3rd.sizeToFit()
            self.Label3rd.sizeToFit()
            self.Label4th.sizeToFit()
            self.Label5th.sizeToFit()
            self.Label6th.sizeToFit()
            self.Label7th.sizeToFit()
            self.Label8th.sizeToFit()
            
            var maxWidth:CGFloat = 0
            
            var width:CGFloat = self.Label1st.bounds.origin.x + self.Label1st.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label2nd.bounds.origin.x + self.Label2nd.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label3rd.bounds.origin.x + self.Label3rd.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label4th.bounds.origin.x + self.Label4th.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label5th.bounds.origin.x + self.Label5th.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label6th.bounds.origin.x + self.Label6th.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label7th.bounds.origin.x + self.Label7th.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            width = self.Label8th.bounds.origin.x + self.Label8th.bounds.size.width
            if(width > maxWidth){
                maxWidth = width
            }
            
            self.contentSize.width = maxWidth
            
        }
        
    }
    
    


}
