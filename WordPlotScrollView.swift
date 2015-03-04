//
//  WordPlotScrollView.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/04.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class WordPlotScrollView: UIScrollView {
    var Label1st :UILabel!
    var Label2nd:UILabel!
    var Label3rd:UILabel!
    var Label4th:UILabel!
    var Label5th:UILabel!
    var Label6th:UILabel!
    var Label7th:UILabel!
    


    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        var Row_height = self.bounds.height/10
        var xCoordinateOfStartingWord = self.bounds.width/12
        
        var LabelHeight = CGFloat(30)
        
        
        
        let X_Label = xCoordinateOfStartingWord
        
        let label_width = xCoordinateOfStartingWord*11
        
        
        self.Label1st = UILabel(frame:  CGRectMake(X_Label, Row_height, label_width, LabelHeight))
        self.Label2nd = UILabel(frame:  CGRectMake(X_Label, Row_height*2, label_width, LabelHeight))
        self.Label3rd = UILabel(frame: CGRectMake(X_Label, Row_height*3, label_width, LabelHeight))
        self.Label4th = UILabel(frame: CGRectMake(X_Label, Row_height*4, label_width, LabelHeight))
        self.Label5th = UILabel(frame: CGRectMake(X_Label, Row_height*5, label_width, LabelHeight))
        self.Label6th = UILabel(frame: CGRectMake(X_Label, Row_height*6, label_width, LabelHeight))
        self.Label7th = UILabel(frame: CGRectMake(X_Label, Row_height*7, label_width, LabelHeight))
        
        
        
        
        
        
        
        
        
    }


}
