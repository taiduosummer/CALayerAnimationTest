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
        let viewMask = UIView(frame: CGRectMake(100,200,200,100))
        //        viewMask.backgroundColor = UIColor.blueColor()
        view.addSubview(viewMask)
        
        let leftLayer = CAGradientLayer()
        leftLayer.frame = CGRectMake(0, 0, 100, 200)
        leftLayer.colors = [UIColor.greenColor().CGColor,UIColor.blueColor().CGColor]
        leftLayer.startPoint = CGPointMake(0, 1)
        leftLayer.endPoint = CGPointMake(1, 0)
        viewMask.layer.addSublayer(leftLayer)
        
        let rightLayer = CAGradientLayer()
        rightLayer.frame = CGRectMake(100, 0, 100, 200)
        rightLayer.colors = [UIColor.blueColor().CGColor,UIColor.redColor().CGColor]
        rightLayer.startPoint = CGPointMake(0, 0)
        rightLayer.endPoint = CGPointMake(1, 1)
        viewMask.layer.addSublayer(rightLayer)
        
        
        let pathLayer = CAShapeLayer()
        pathLayer.lineWidth = 10.0
        pathLayer.lineJoin = kCALineJoinRound
        pathLayer.lineCap = kCALineCapRound
        
        pathLayer.fillColor = UIColor.clearColor().CGColor
        pathLayer.strokeColor = UIColor.whiteColor().CGColor
        let pathBese = UIBezierPath(arcCenter: CGPointMake(100, 100), radius: 80, startAngle: CGFloat(M_PI*1.5/2), endAngle: CGFloat(2.25 * M_PI), clockwise: true)
        pathLayer.path = pathBese.CGPath
        viewMask.layer.mask = pathLayer
//        viewMask.layer.masksToBounds = true
        
        pathLayer.strokeEnd = 1
        pathLayer.strokeStart = 0
        
        let animaitonEnd = CABasicAnimation(keyPath: "strokeEnd")
        animaitonEnd.fillMode = kCAFillModeForwards
        animaitonEnd.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        animaitonEnd.fromValue = 0
        animaitonEnd.toValue = 1
        animaitonEnd.duration = 2
        pathLayer.addAnimation(animaitonEnd, forKey: "end")
        
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

















































