//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
struct AudioChannel {
    static let thresholdLevel = 10
    static var maxInputLevelForAllChannels = 0
    var currentLevel:Int = 0 {
        didSet{
            if currentLevel > AudioChannel.thresholdLevel{
                currentLevel = AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels{
                AudioChannel.maxInputLevelForAllChannels = currentLevel
            }
        }
    }
    
}

var leftChannel = AudioChannel()
var rightChannel = AudioChannel()

leftChannel.currentLevel = 7
print(leftChannel.currentLevel)
print(AudioChannel.maxInputLevelForAllChannels)

enum SomeEumeration{
    case North
    case South
    case East
    case West
}

var directionToHead = SomeEumeration.West
directionToHead = .East

switch directionToHead{
    case .North:
         print("Losts north")
    case .East:
        print("Lost East")
    default:
        print("humans")
}


@objc protocol AnotherProtocol{
//    var fullName:String{get set}
    static func somTypeProperty()
}

class Starship: AnotherProtocol {
    var prefix:String?
    var name:String
    init(name:String){
        self.name = name
    }
    
    @objc static func somTypeProperty() {
        print("1234")
    }
}


func fib(n :Int)->Int{
    if n <= 1 {
        return 1
    }else{
        return fib(n - 1) + fib(n - 2)
    }
}

fib(6)


































