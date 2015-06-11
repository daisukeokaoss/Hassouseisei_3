//
//  WordCollectionTableViewController.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/03/23.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class WordCollectionTableViewController: UITableViewController {

    @IBAction func WordCollectionChange(sender: UISwitch) {
        var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        WordCountLabel.text = "ワード数は"+delegate.wordpoolmanage.WordPoolCount().description+"個です"
        
    }
    
    var WordCountLabel:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0){
            var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
            
            return (delegate.wordpoolmanage.WordPoolArray.count ?? 0)+1
        }
        
        return 0
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        
        
        if(indexPath.section == 0 && ((indexPath.row >= 0) && (indexPath.row < (delegate.wordpoolmanage.WordPoolArray.count ?? 0)))){
            
            var cell:SomeWordUITableCell = tableView.dequeueReusableCellWithIdentifier("SomeWordCollectionCell", forIndexPath: indexPath) as! SomeWordUITableCell
            
            
            var wordstore:WordStore?
            wordstore = delegate.wordpoolmanage.WordPoolArray[indexPath.row] as WordStore
            
            print(indexPath.row)
            
            cell.SetCaption(wordstore!.returnCaption())
            
            return cell

            
        }else{
            let cell:WordCountTableViewCell = tableView.dequeueReusableCellWithIdentifier("WordCountCell", forIndexPath: indexPath) as! WordCountTableViewCell
            
            
        
            return cell
        }
    }
    
    
    func countFullWordArrayCount()-> Int
    {
        var delegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        var totalArray:Array<String> = []
        
       /* for var i = 0 ; i < self.SomeWordsCellCollection.count; i++ {
            var cell = self.SomeWordsCellCollection[i] as SomeWordUITableCell
            if (cell.SwitchOn == true){
                totalArray += delegate.wordpoolmanage.WordPoolArray[i].ReturningWordArray()
            }
        }
        
        self.WordCollectionPlotLabel[0].text = "ワード数は" + totalArray.count.description + "個です"*/
        
        return totalArray.count
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
