//
//  ViewController.swift
//  ViewsValue
//
//  Created by madarax on 16/1/23.
//  Copyright © 2016年 LiXia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var labName:UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func goNextVC(){
        
//        navigationController?.pushViewController(FirstViewController(), animated: true)
        performSegueWithIdentifier("kFistVC", sender: self)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        print(segue.identifier)
        if segue.identifier == "kFistVC" {
            var firstVController = segue.destinationViewController as! FirstViewController
    
            firstVController.nameStr = "789"
        }
    }
}

































