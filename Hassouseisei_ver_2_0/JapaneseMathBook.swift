//
//  JapaneseITBook.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/07/11.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class JapaneseMathBook: BookWordStore {
    
    func returnCaption() -> String{
        return "数学の書籍"
    }
    
    func ReturningWordArray() -> Array<OneBook>{
        //var ReturnWordArray:[OneBook] = []
        
        var WordStore:[OneBook] = []
        
        var book:OneBook!
        
        book.BookTitle = "やさしく学べる線形代数　石村 園子"
        book.MobileBookURL   = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320016602&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        WordStore.append(book)
        
        book.BookTitle = "ゼロから学ぶ線形代数 (ゼロから学ぶシリーズ)"
        book.MobileBookURL   = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00F2H37TW&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        WordStore.append(book)
        
        book.BookTitle = "線形代数 行列と数ベクトル空間 (日評ベーシック・シリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4535806284&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        WordStore.append(book)
        
        book.BookTitle = "まずはこの一冊から 意味がわかる線形代数 BERET SCIENCE"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00QKMQ4DO&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "ラックス線形代数"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4621089498&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "線型代数入門 (基礎数学1)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4130620010&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "プログラミングのための線形代数"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4274065782&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "高校数学でわかる線形代数―行列の基礎から固有値まで (ブルーバックス)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4062577046&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "1冊でマスター 大学の線形代数"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4774170372&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "キーポイント線形代数 (理工系数学のキーポイント 2)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4000078623&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "線形代数学（新装版）"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4535786542&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "演習線形代数 (サイエンスライブラリ演習数学 2) "
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=478190176X&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "入門線形代数"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=456300216X&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "明解演習 線形代数 (明解演習シリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320010787&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "はじめての線形代数15講 (KS理工学専門書)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=406156546X&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "やさしく学べる基礎数学―線形代数・微分積分―"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320016831&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "基本演習 線形代数 (基本演習ライブラリ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4781905803&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "弱点克服 大学生の線形代数"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4489007493&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "ふたたびの微分・積分"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00KFXYVWU&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "微分積分学の誕生 デカルト『幾何学』からオイラー『無限解析序説』まで"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4797376910&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "坂田アキラの 数IIIの微分積分が面白いほどわかる本 (坂田アキラの理系シリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4046007346&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "マンガでわかる微分積分　微積ってなにをしているの？　どうして教科書はわかりにくいの？ (サイエンス・アイ新書)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4797342501&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "やさしく学べる微分積分"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320016335&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "ひとりで学べる微分積分演習 (ひとりで学べる数学演習ライブラリ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4781913628&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "微積分/基礎の極意―大学への数学"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4887420293&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "微分積分"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4785310715&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "改訂版 坂田アキラの 数IIの微分積分が面白いほどわかる本 (数学が面白いほどわかるシリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4046007303&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "「超」入門　微分積分　学校では教えてくれない「考え方のコツ」 (ブルーバックス)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00JA05KI8&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "曲線・曲面の微分幾何 (共立講座 数学探検 8)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320111818&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "これだけ! 微分積分 (これだけ!シリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4798043850&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "1冊でマスター 大学の微分積分"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=477416545X&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "微分積分 (理工系の数学入門コース 1)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4000077716&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "入門微分積分"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4563002216&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "1対1対応の演習/数学3 微積分編 (大学への数学 1対1シリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4887422067&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "演習微分積分 (サイエンスライブラリ―演習数学)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4781901778&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "微分積分学 (サイエンスライブラリ―数学)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4781901085&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "ゼロから学ぶ微分積分 (ゼロから学ぶシリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=406154652X&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "入門 経済学のための微分・積分: 高校数学から経済数学へ"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4492314547&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "パワーUP版 坂田アキラの 数IIIの微分積分(積分編)が面白いほどわかる本 (数学が面白いほどわかるシリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4046025964&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "やさしく学べる基礎数学―線形代数・微分積分―"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4320016831&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "坂田アキラの数3の微分積分「極限・微分編」が面白いほどわかる本 (数学が面白いほどわかるシリーズ)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4046026111&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "弱点克服 大学生の微積分"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4489007191&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "数学Ⅰ＋Ａ＋Ⅱ+Ｂ 上級問題精講"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4010347988&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "稲荷の独習数学"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4325200452&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "数学と語学"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B009AJ9YIG&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "数学の大統一に挑む"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4163902805&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "数学ロングトレイル　「大学への数学」に挑戦　じっくり着実に理解を深める (ブルーバックス) "
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00ZZOGD2K&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "天才たちのつくった数学の世界 (綜合ムック)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4862981585&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "若き数学者への手紙 (ちくま学芸文庫) "
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4480096736&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        //https://affiliate.amazon.co.jp/gp/associates/network/build-links/mobile/individual/main.html?__mk_ja_JP=%E3%82%AB%E3%82%BF%E3%82%AB%E3%83%8A&marketplace=amazon&searchSubcategory=all&fieldKeywords=%E6%95%B0%E5%AD%A6&go.x=0&go.y=0&go=1&submit=1&selectedSearchIndex=all
        book.BookTitle = "データを正しく見るための数学的思考――数学の言葉で世界を見る"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4822285391&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "新体系　高校数学の教科書　上 (ブルーバックス)"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=B00INTNNFE&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
        book.BookTitle = "復刻版　算数・数学教育と数学的な考え方"
        book.MobileBookURL = "http://www.amazon.co.jp/gp/aw/rd.html?ie=UTF8&a=4491031304&at=daisukeokahas-22&dl=1&lc=msn&uid=NULLGWDOCOMO&url=%2Fgp%2Faw%2Fd.html"
        
    
        
        
        
        
        
        return WordStore
    }
   
}
