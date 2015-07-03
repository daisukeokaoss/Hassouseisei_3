//
//  WordPoolManagement.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/02/28.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import Foundation

class WordPoolManagement{
    var WordPoolArray:Array<WordStore>
    
    init(){
        self.WordPoolArray = []
        var ITWord:WordStore = ITWordStoreStore()
        var MedicalWord:WordStore = MedicalWordStore()
        var OpticalWord:WordStore = OpticalWordStore()
        var ModernSocial:WordStore = ModernSocialWord()
        var Biological:WordStore   = BiologicalWordStore()
        var Chemical:WordStore     = ChemicalWordStore()
        var Elementary:WordStore   = ElementaryWordStore()
        var Ethical:WordStore      = EthicalStoreStore()
        var GameWord:WordStore     = GameWordStore()
        var Physical:WordStore     = PhysicalWordStore()
        var worldHistory:WordStore  = WorldHistoryWordStore()
        var jijiWord:WordStore = JijiWordStore()
        self.WordPoolArray += [ITWord,MedicalWord,OpticalWord,ModernSocial]
        self.WordPoolArray += [Biological,Chemical,Elementary,Ethical,GameWord]
        self.WordPoolArray += [Physical,worldHistory,jijiWord]
        //self.WordPoolArray += [Physical,worldHistory]
        
        self.UserDefaultToSettings()
        
    }
    
    func UserDefaultToSettings()
    {
        let ud = NSUserDefaults.standardUserDefaults()
        
        

        
        for pool in self.WordPoolArray
        {
            var keyValue:NSMutableDictionary = NSMutableDictionary()
            
            keyValue.setObject(true, forKey: pool.returnCaption())
            
            NSUserDefaults.standardUserDefaults().registerDefaults(keyValue as [NSObject : AnyObject])
            
            pool.WordSwitchOn = ud.boolForKey(pool.returnCaption())
            
        }
    }
    
    func StoreWordPoolArray(){
        self.WordPoolArray = []

    }
    
    func WordPoolCount() -> Int
    {
        var TotalWordArray:Array<String> = []
        for(var i=0;i<self.WordPoolArray.count;i++){
            if(self.WordPoolArray[i].WordSwitchOn == true){
                TotalWordArray += self.WordPoolArray[i].ReturningWordArray()
            }
        }
        return TotalWordArray.count
    }
    
    func returnWordPoolArray() -> Array<String>
    {
        var TotalWordArray:Array<String> = []
        for(var i=0;i<self.WordPoolArray.count;i++){
            if(self.WordPoolArray[i].WordSwitchOn == true){
                TotalWordArray += self.WordPoolArray[i].ReturningWordArray()
            }
        }
        return TotalWordArray
    }
    
    func WordPoolCountAndPlot()
    {
        var count:Int = WordPoolCount()
        //NSNotificationのインスタンスを作成。["value":100]という辞書型のデータを持たせる
        var n:NSNotification = NSNotification(name: "wordCount", object: self, userInfo: ["value": count])
        //通知を送る
        NSNotificationCenter.defaultCenter().postNotification(n)

    }
    
    func outputManyWord(NumberOfWord: Int) -> Array<String>
    {
        
        START: do{
            var indexArray:Array<Int> = []
            var wordArray:Array<String> = []
            
            var words:Array<String> = returnWordPoolArray()
            
            if words.count > 0 {
                
                for var i:Int = 0;i<NumberOfWord;i++ {
                    var flag:Bool = false
                    CLEAR: do{
                        flag = false
    
                        var index:Int = Int(arc4random() % UInt32(words.count))
                        for var j=0;j<i;j++ {
                            if indexArray[j] == index {
                                
                                flag = true
                                continue CLEAR
                            }
                        }
                        indexArray.append(index)
                    }while flag == true
                }
        
        
            
                for var i=0;i<NumberOfWord;i++ {
                    wordArray.append(words[indexArray[i]])
                }
                
                for var i=0;i<wordArray.count ;i++ {
                    for var j=0;j<i;j++ {
                        if wordArray[j] == wordArray[i] {
                            continue START
                        }
                    }
                }
                
                /*for var i=0;i < wordArray.count;i++ {
                    wordArray[i] == ""
                    continue START
                }*/
                return wordArray
            }else{
                return []
            }
        
            
        }while(false)
        
        return []

    }
}