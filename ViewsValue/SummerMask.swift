//
//  SummerMask.swift
//  ViewsValue
//
//  Created by madarax on 16/2/22.
//  Copyright © 2016年 LiXia. All rights reserved.
//

import Foundation
import UIKit

class MaskLayer {
    func animaitonMask(){
        let viewMask = UIView(frame: CGRectMake(100,200,200,100))
        //        viewMask.backgroundColor = UIColor.blueColor()
//        view.addSubview(viewMask)
        
        let leftLayer        = CAGradientLayer()
        leftLayer.frame      = CGRectMake(0, 0, 100, 200)
        leftLayer.colors     = [UIColor.greenColor().CGColor,UIColor.blueColor().CGColor]
        leftLayer.startPoint = CGPointMake(0, 1)
        leftLayer.endPoint   = CGPointMake(1, 0)
        viewMask.layer.addSublayer(leftLayer)
        
        let rightLayer        = CAGradientLayer()
        rightLayer.frame      = CGRectMake(100, 0, 100, 200)
        rightLayer.colors     = [UIColor.blueColor().CGColor,UIColor.redColor().CGColor]
        rightLayer.startPoint = CGPointMake(0, 0)
        rightLayer.endPoint   = CGPointMake(1, 1)
        viewMask.layer.addSublayer(rightLayer)
        
        
        let pathLayer       = CAShapeLayer()
        pathLayer.lineWidth = 10.0
        pathLayer.lineJoin  = kCALineJoinRound
        pathLayer.lineCap   = kCALineCapRound
        
        pathLayer.fillColor   = UIColor.clearColor().CGColor
        pathLayer.strokeColor = UIColor.whiteColor().CGColor
        let pathBese          = UIBezierPath(arcCenter: CGPointMake(100, 100), radius: 80, startAngle: CGFloat(M_PI*1.5/2), endAngle: CGFloat(2.25 * M_PI), clockwise: true)
        pathLayer.path        = pathBese.CGPath
        viewMask.layer.mask   = pathLayer
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
}