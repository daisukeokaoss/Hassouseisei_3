//
//  WordStore.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/02/28.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

class WordStore{
    var WordSwitchOn: Bool 
        {
        get{
            return self.wordSwitch
        }
        set{
            self.wordSwitch = newValue
        }
    }
    
    internal var wordSwitch:Bool = true
    
    func returnCaption() -> String{
        return ""
    }

    
    func ReturningWordArray() -> Array<String>{
        return []
    }
    //var wordEnable


    
}




