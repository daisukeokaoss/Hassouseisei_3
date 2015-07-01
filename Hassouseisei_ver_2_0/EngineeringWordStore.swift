//
//  EngineeringWordStore.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/07/01.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

class EngineeringWordStore: WordStore{
    override func returnCaption() -> String{
        return "工学用語"
    }
    
    override func ReturningWordArray() -> Array<String>{
        var ReturnWordArray:[String] = []
        
        var wordStore = ["アイアンハンド","アイアンワーク","IRST","IED","IHI","IMI","Il-2","Il-76","IAI","ＩＡＥＡ","IA58","合口","愛国号","アイコナール","アイコニック","ＩＣＲＵ","愛称","ＩＣＲＰ","ICV","IJN","IJA",
               "アイスノート","アイスバーン","アイス・オンコイル製氷","アイソクロマティシティ","アイソトープ","アイソパック・マップ","アイソレーター","アイゾット衝撃強さ","相対取引価格","アイデアスケッチ","アイデンティティ",
               "アイドラーアーム"]
        
        ReturnWordArray += wordStore
        
        
        
        return ReturnWordArray
    }

}
