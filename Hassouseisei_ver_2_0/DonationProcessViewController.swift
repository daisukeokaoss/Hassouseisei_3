//
//  DonationProcessViewController.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/08/11.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

class DonationProcessViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {

    private let PriceArray = [1000,3000,5000]


    @IBAction func CancelButtonClick(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBOutlet weak var PricePickerView:UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.PricePickerView = UIPickerView()
        
        self.PricePickerView.delegate = self
        
        self.PricePickerView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //表示個数
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return PriceArray.count
    }
    
    //表示内容
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        return String(self.PriceArray[row])
    }
    
    //選択時
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
