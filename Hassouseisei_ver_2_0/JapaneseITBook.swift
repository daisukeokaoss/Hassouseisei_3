//
//  JapaneseITBook.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/07/11.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class JapaneseITBook: BookWordStore {
    
    func returnCaption() -> String{
        return "ITの書籍"
    }
    
    func ReturningWordArray() -> Array<String>{
        var ReturnWordArray:[OneBook] = []
        
        var WordStore:[OneBook]
        
        var book:OneBook
        
        book.BookTitle = "やさしく学べる線形代数　石村 園子"
        book.MobileBookURL   = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320016602&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        WordStore.append(book)
        
        book.BookTitle = "ゼロから学ぶ線形代数 (ゼロから学ぶシリーズ)"
        book.MobileBookURL   = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00F2H37TW&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        WordStore.append(book)
        
        book.BookTitle = ""
   
}
