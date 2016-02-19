//: Playground - noun: a place where people can play

import UIKit

var name = "123"
var name1 = name + String(456)
name1.endIndex
//get set
class Persion {
    var name:String?
    var _name:String?{
        set(newValue){
            name = newValue
        }
        get{
            return self.name
        }
    }
}

var woker = Persion()
woker.name = "123"
print(woker.name)

//类方法扩展
extension String{
    static func filterPhone(phoneNumber:String)->Bool{
        let MOBILE = "^1[3|7|4|5|8|][0-9]\\d{8}$"
        let regextestmobile = NSPredicate(format: "SELF MATCHES %@", MOBILE)
        return regextestmobile.evaluateWithObject(phoneNumber)
    }
}

let phoneOK = String.filterPhone(name1)

struct Point {
    var x = 0.0, y = 0.0
}
struct Size {
    var width = 0.0, height = 0.0
}
struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = origin.x + (size.width / 2)
            let centerY = origin.y + (size.height / 2)
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) {
            origin.x = newCenter.x - (size.width / 2)
            origin.y = newCenter.y - (size.height / 2)
        }
    }
}
var square = Rect(origin: Point(x: 0.0, y: 0.0),
    size: Size(width: 10.0, height: 10.0))
let initialSquareCenter = square.center
square.center = Point(x: 15.0, y: 15.0)
print("(\(square.origin.x), \(square.origin.y))")
