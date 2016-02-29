
//
//  SummerSpring.swift
//  ViewsValue
//
//  Created by madarax on 16/2/26.
//  Copyright © 2016年 LiXia. All rights reserved.
//

import UIKit

class springSummer {
    func animtaonSummer(){
        let label = CALayer()
        label.frame = CGRect(x: 100, y: 200, width: 30, height: 30)
        label.backgroundColor = UIColor.redColor().CGColor
//        view.layer.addSublayer(label)
        
        
        let spring = CASpringAnimation(keyPath: "position.x")
        spring.damping = 5;
        spring.stiffness = 100;
        spring.mass = 1;
        spring.initialVelocity = 10;
        spring.fromValue = label.position.x;
        spring.toValue = label.position.x + 50;
        spring.duration = spring.settlingDuration;
        spring.fillMode = kCAFillModeForwards//1
        spring.removedOnCompletion = false//2保持动画后状态
        label.addAnimation(spring, forKey: spring.keyPath);
    }
}