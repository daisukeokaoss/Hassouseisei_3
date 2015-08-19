//
//  WordCountTableViewCell.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/23.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class WordCountTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "update:", name: "wordCount", object: nil)
    }
    
    convenience init()
    {
        self.init()
        
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func update(notification: NSNotification)
    {

        
        if let userInfo = notification.userInfo {
            let result = userInfo["value"]! as! Int
            CountingWordLabel.text = "ワード数は" + String(result) + "個です。"
        }
        
    }

    @IBOutlet weak var CountingWordLabel: UILabel!
    
    override func  layoutSubviews() {
        print("なになに用語")
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "update:", name: "wordCount", object: nil)
    }
    
    
}
