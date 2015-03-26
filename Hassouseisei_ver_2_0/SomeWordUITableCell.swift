//
//  SomeWordUITableCell.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/23.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class SomeWordUITableCell: UITableViewCell {

    @IBAction func WordSwitchClicked(sender: UISwitch) {
        var delegate:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
        
        for (var i=0;i<delegate.wordpoolmanage.WordPoolArray.count; i++){
            if(self.SomeWordLabel.text == delegate.wordpoolmanage.WordPoolArray[i].returnCaption()){
                if(sender.on == true){
                    delegate.wordpoolmanage.WordPoolArray[i].WordSwitchOn = true
                }else{
                    delegate.wordpoolmanage.WordPoolArray[i].WordSwitchOn = false
                }
                
                delegate.wordpoolmanage.WordPoolCount()
                
            }
        }
    }
    @IBOutlet weak var SomeWordLabel: UILabel!
    @IBOutlet weak var EnableOrDisableWordPoolSwitch: UISwitch!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func SetCaption(cap :String){
        SomeWordLabel.text = cap
    }
    
    internal var SwitchOn:Bool = true

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
