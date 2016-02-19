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
        let pathBe = UIBezierPath(arcCenter: CGPointMake(100, 300), radius: 80, startAngle: 0, endAngle: CGFloat(2 * M_PI), clockwise: false)
        
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.strokeColor = UIColor.redColor().CGColor
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.path = pathBe.CGPath
        view.layer.addSublayer(shapeLayer)
        shapeLayer.strokeEnd = 1
        shapeLayer.strokeStart = 1
        
        let animationPath = CABasicAnimation(keyPath: "strokeStart")
        animationPath.fillMode = kCAFillModeForwards
        animationPath.fromValue = -1
        animationPath.toValue = 1
        animationPath.duration = 2
        shapeLayer.addAnimation(animationPath, forKey: "start")
        
        let animaitonEnd = CABasicAnimation(keyPath: "strokeEnd")
        animaitonEnd.fillMode = kCAFillModeForwards
        animaitonEnd.fromValue = 0
        animaitonEnd.toValue = 1
        animaitonEnd.duration = 2
        shapeLayer.addAnimation(animaitonEnd, forKey: "end")
        
        let groupAnimation = CAAnimationGroup()
        groupAnimation.animations = [animationPath,animaitonEnd]
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

































