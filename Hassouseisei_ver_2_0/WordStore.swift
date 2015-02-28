//
//  WordStore.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/02/28.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

protocol WordStore{
    
    class func returnCaption() -> String
    
    class func ReturningWordArray() -> Array<String>
    
}
