//
//  FoodWordStore.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/08/19.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class FoodWordStore: WordStore {
    
    override func returnCaption() -> String{
        return "食品"
    }
    
    override func ReturningWordArray() -> Array<String>{
        var ReturnWordArray:[String] = []
        
        var wordArray = ["ア ラ","あいがも","アイコ","アイシング","ICA","ICO","アイスクリーム","アイスビール","アイスボックス","アイスミルク","あいなめ","アイリッシュウイスキー","アイリッシュ・コーヒー","亜鉛","青い珊瑚礁","青カビ",
         "あおかび","あおさ","青竹打ち","青とさか","あおのり","青ピーマン","あかいか","あかい酒","赤色酵母","あかがい","アカザ","赤酒","赤たまねぎ","赤とさか","赤ピーマン","赤米","赤めし","赤ワイン","秋上がり","灰汁","アクアヴィット",
        "アクアビット","アクアビットの製造方法","アクアビットの飲み方","アクアビットの歴史"]
        
        return ReturnWordArray
        
    }
   
}
