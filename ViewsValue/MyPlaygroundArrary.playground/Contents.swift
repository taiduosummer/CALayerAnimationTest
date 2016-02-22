//: Playground - noun: a place where people can play

import UIKit

extension UIView {
//    let flashColorKey:CChar!
    var myTag: String? {
        get {
            return objc_getAssociatedObject(self, "myTag") as? String
            
        }
        set(newValue) {
            objc_setAssociatedObject(self, "myTag",newValue,.OBJC_ASSOCIATION_RETAIN)
        }
        
    }
}
var viewTag = UIView()
viewTag.myTag = "123"
viewTag.myTag
