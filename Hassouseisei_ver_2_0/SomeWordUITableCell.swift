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
        var delegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        for (var i=0;i<delegate.wordpoolmanage.WordPoolArray.count; i++){
            if(self.SomeWordLabel.text == delegate.wordpoolmanage.WordPoolArray[i].returnCaption()){
                if(sender.on == true){
                    delegate.wordpoolmanage.WordPoolArray[i].WordSwitchOn = true
                }else{
                    delegate.wordpoolmanage.WordPoolArray[i].WordSwitchOn = false
                }
                
                delegate.wordpoolmanage.WordPoolCountAndPlot()
                
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
        let ud = NSUserDefaults.standardUserDefaults()
        
        
        
        if SomeWordLabel.text != nil{
            /*if ud.boolForKey(SomeWordLabel.text!) {
                EnableOrDisableWordPoolSwitch.setOn(false, animated: false)
            }else{*/
                EnableOrDisableWordPoolSwitch.setOn(ud.boolForKey(SomeWordLabel.text!), animated: false)
           // }
            
        }
        
        
    }
    
    internal var SwitchOn:Bool = true

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "finalzie_UI:", name: "Finalize", object: nil)
        
        
    }
    
    
    
    
    
    //関数で受け取った時のアクションを定義
    func finalzie_UI(notification: NSNotification)  {
        let ud = NSUserDefaults.standardUserDefaults()
        
        ud.setBool(EnableOrDisableWordPoolSwitch.on, forKey: SomeWordLabel.text!)
            
       
    }
    
   

}
