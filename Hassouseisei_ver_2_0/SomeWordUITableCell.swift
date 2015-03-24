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
        if(sender.on == true){
            self.SwitchOn = true
        }else {
            self.SwitchOn = false
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
