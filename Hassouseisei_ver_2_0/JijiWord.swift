//
//  JijiWord.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/16.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

class JijiWordStore: WordStore{
    class func returnCaption() -> String{
        return "時事用語"
    }
    
    class func ReturningWordArray() -> Array<String>{
        var ReturnWordArray:[String] = []
        
        //http://www.weblio.jp/category/business/sngjy
        
        var wordArray = ["アイアムケンジ","ISD条項","ＩＸＶ","IFO注文","ILOグローバルリポート","アイオリス山","アイサイト","アイサイトカメラ","アイザーウェイ","アイシル","ICT維新ビジョン","ICT教育","アイスカップヌードル",
             "アイスクエイク","アイスバケットチャレンジ","アイスバケツチャレンジ","アイスバーグ・スケーティング・パレス","アイスル","ISIL","アイセック","アイソトープ電池","アイソン彗星","Iターン就農","IWG報告書","IT関連銘柄",
             "アイヌ象徴空間","アイヌ文化象徴空間","アイヌ民族象徴空間","アイヌ民族党","アイヌ民族の共生の象徴となる空間","相乗り衛星","あい乗り衛星","相乗り候補","相乗り小型衛星","相乗り小型副衛星","アイピーシーシー",
             "IPCC","アイボール","i-Ball","アイミーブ","IUU","アイランドリバーサル","アイルワースのモナリザ","アイルワース版モナリザ","アウストラロピテクス・アファレンシス","アウストラロピテクス・セディバ",
             "アウターライズ","アウターライズ地震","アウトパフォーム","アウトブレイク","アウトライト","アウトライト取引","青い森信金","青色LED","青色発光ダイオード","青葉アルコール","青海・台場クロスウォーク",
             "赤色警報","赤警報","赤坂議員宿舎","赤坂衆議院議員宿舎","赤三兵","赤三兵先詰まり","赤三兵思案星","暴対法","暴追放センター","赤字国債","赤ちゃん工場","あかちゃんポスト"]
        
        ReturnWordArray += wordArray
        
        //http://www.weblio.jp/category/business/sngjy/aa/2
        
        wordArray = ["アカデミー名誉賞","赤髭対象","赤ひげ大賞",]
        
        return ReturnWordArray

    }
}
