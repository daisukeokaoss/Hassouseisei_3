//
//  DonationProcessViewController.swift
//  Hassouseisei_ver_2_0
//
//  Created by 岡大輔 on 2015/08/11.
//  Copyright (c) 2015年 岡大輔. All rights reserved.
//

import UIKit

import StoreKit

class DonationProcessViewController: UIViewController , SKProductsRequestDelegate, SKPaymentTransactionObserver{

    
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    var product_id: NSString? = "biz.nanosoftware.donate1";


    @IBAction func CancelButtonClick(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    @IBOutlet weak var PricePickerView:UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //self.PricePickerView = UIPickerView()

        // Do any additional setup after loading the view.
        //SKPaymentQueue.defaultQueue().addTransactionObserver(self)
        
        //Check if product is purchased
        
        SKPaymentQueue.defaultQueue().addTransactionObserver(self)
        
        //Check if product is purchased
        
        
        
        if (defaults.boolForKey("purchased")){
            
            // Hide a view or show content depends on your requirement
            
        }
        else if (!defaults.boolForKey("stonerPurchased")){
            println("false")
            
        }
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  /*  func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }*/
    


    
    //選択時
 /*   func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
    }*/
    
    func buyProduct(product: SKProduct){
        println("Sending the Payment Request to Apple");
        var payment = SKPayment(product: product)
        SKPaymentQueue.defaultQueue().addPayment(payment);
        
    }
    
    func productsRequest (request: SKProductsRequest, didReceiveResponse response: SKProductsResponse) {
        
        var count : Int = response.products.count
        if (count>0) {
            var validProducts = response.products
            var validProduct: SKProduct = response.products[0] as! SKProduct
            if (validProduct.productIdentifier == self.product_id) {
                println(validProduct.localizedTitle)
                println(validProduct.localizedDescription)
                println(validProduct.price)
                buyProduct(validProduct);
            } else {
                println(validProduct.productIdentifier)
            }
        } else {
            println("nothing")
        }
    }

    
    @IBAction func DonateExecute(sender: UIButton) {
        if (SKPaymentQueue.canMakePayments())
        {
            var productID:NSSet = NSSet(object: self.product_id!);
            var productsRequest:SKProductsRequest = SKProductsRequest(productIdentifiers: productID as Set<NSObject>);
            productsRequest.delegate = self;
            productsRequest.start();
            println("Fething Products");
        }else{
            println("can't make purchases");
        }

    }
    
    func paymentQueue(queue: SKPaymentQueue!, updatedTransactions transactions: [AnyObject]!)    {
        println("Received Payment Transaction Response from Apple");
        
        for transaction:AnyObject in transactions {
            if let trans:SKPaymentTransaction = transaction as? SKPaymentTransaction{
                switch trans.transactionState {
                case .Purchased:
                    println("Product Purchased");
                    SKPaymentQueue.defaultQueue().finishTransaction(transaction as! SKPaymentTransaction)
                    defaults.setBool(true , forKey: "purchased")
                    let alertController = UIAlertController(title: "ありがとうございます。", message: "カンパありがとうございます！！", preferredStyle: .Alert)
                    
                    let defaultAction = UIAlertAction(title: "OK", style: .Default, handler: nil)
                    alertController.addAction(defaultAction)
                    
                    presentViewController(alertController, animated: true, completion: nil)
                    break;
                case .Failed:
                    println("Purchased Failed");
                    SKPaymentQueue.defaultQueue().finishTransaction(transaction as! SKPaymentTransaction)
                    break;
                    
                    
                    
                case .Restored:
                    println("Already Purchased");
                    SKPaymentQueue.defaultQueue().restoreCompletedTransactions()
                    
                    
                default:
                    break;
                }
            }
        }
        
    }
    
    func request(request: SKRequest!, didFailWithError error: NSError!) {
        println("Error Fetching product information");
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
