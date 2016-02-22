//
//  SummerBaseAnimation.swift
//  ViewsValue
//
//  Created by madarax on 16/2/22.
//  Copyright © 2016年 LiXia. All rights reserved.
//

import Foundation
import UIKit
class SummerAnimation {
    func animaitonBase(){
        let pathBe = UIBezierPath(arcCenter: CGPointMake(100, 300), radius: 80, startAngle: 0, endAngle: CGFloat(2 * M_PI), clockwise: false)
        
        let shapeLayer = CAShapeLayer.init()
        shapeLayer.strokeColor = UIColor.redColor().CGColor
        shapeLayer.lineDashPattern = [6,3]
        shapeLayer.fillColor = UIColor.clearColor().CGColor
        shapeLayer.lineJoin = kCALineJoinRound
        shapeLayer.path = pathBe.CGPath
//        view.layer.addSublayer(shapeLayer)
        
        //        let transation = CATransition()
        //        transation.subtype = kCATransitionFromLeft
        //        transation.type = kCATransitionMoveIn
        
        
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
    
}