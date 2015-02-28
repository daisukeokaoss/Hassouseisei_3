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
        self.WordPoolArray += [ITWord,MedicalWord,OpticalWord,ModernSocial]
        self.WordPoolArray += [Biological,Chemical,Elementary,Ethical,GameWord]
        self.WordPoolArray += [Physical,worldHistory]
        
    }
    
    func StoreWordPoolArray(){
        self.WordPoolArray = []

    }
}
