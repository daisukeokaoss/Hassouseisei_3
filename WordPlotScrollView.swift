//
//  WordPlotScrollView.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/04.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit



class WordPlotScrollView: UIScrollView {
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
        //self.sizeThatFits(CGSize(width: UIScreen.mainScreen().bounds.size.width, height: UIScreen.mainScreen().bounds.size.height) )
        
        print("Drowed")
        
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
        
        self.Label1st.sizeToFit()
        
        self.contentSize = CGSize(width: X_Label + self.Label1st.sizeThatFits(CGSize(width: 1000, height: 1000)).width, height: self.bounds.size.height)
        //self.sizeThatFits(CGSize(width: X_Label + self.Label1st.bounds.size.width, height: UIScreen.mainScreen().bounds.size.height))
        
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
        
        self.addSubview(self.generateButton)
        
        
    }


}
