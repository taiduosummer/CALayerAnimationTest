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
        var mortor = CAEmitterLayer()
        mortor.emitterPosition = CGPoint(x: view.bounds.size.width/2, y: view.bounds.size.height*0.75)
        mortor.renderMode = kCAEmitterLayerAdditive
        mortor.birthRate = 4
        
        var rocket = CAEmitterCell()
        rocket.contents = UIImage(named: "145371212570351525.jpg")?.CGImage
        rocket.emissionLongitude = CGFloat(-M_PI/2)
        rocket.emissionLatitude = 0
        rocket.lifetime = 1.6
        rocket.birthRate = 100
        rocket.velocity = 400
        rocket.velocityRange = 100
        rocket.yAcceleration = 250
        rocket.emissionRange = CGFloat(M_PI/4)
        rocket.color = CGColorCreateCopy(UIColor(red: 0.5, green: 0.5, blue: 0.5, alpha: 0.5).CGColor)
        rocket.redRange = 0.5
        rocket.greenRange = 0.5
        rocket.blueRange = 0.5
        rocket.name = "rocket"
        mortor.emitterCells = [rocket]
        view.layer.addSublayer(mortor)
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

















































