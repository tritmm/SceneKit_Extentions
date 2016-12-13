//
//  SCNAction+Extensions.swift
//  indygo_libs
//
//  Created by Tri on 12/13/16.
//  Copyright © 2016 IndygoMedia
//


import Foundation
import SceneKit

public extension SCNAction{
    static func scale(toLocalScale: SCNVector3, duration : TimeInterval) -> SCNAction{
        
        var initialValue: SCNVector3! = nil
        var changeValue: SCNVector3! = nil
        let finalValue: SCNVector3 = toLocalScale
        
        return SCNAction.customAction(duration: duration) {
            node, elapsedTime in
            
            if initialValue == nil || changeValue == nil{
                initialValue = node.scale
                changeValue = SCNVector3Make(finalValue.x - initialValue.x, finalValue.y - initialValue.y, finalValue.z - initialValue.z)
            }
            
            if TimeInterval(elapsedTime) < duration{
                let ratio = Float(elapsedTime) / Float(duration)
                let changeScaleValue = SCNVector3Make(changeValue.x * ratio, changeValue.y * ratio, changeValue.z * ratio)
                node.scale = SCNVector3Make(initialValue.x + changeScaleValue.x, initialValue.y + changeScaleValue.y, initialValue.z - changeScaleValue.z)
            }else{
                node.scale = finalValue
            }
        }
    }
    
    static func scale(byLocalScale: SCNVector3, duration : TimeInterval) -> SCNAction{
        
        var initialValue: SCNVector3! = nil
        let changeValue: SCNVector3 = byLocalScale
        var finalValue: SCNVector3! = nil
        
        return SCNAction.customAction(duration: duration) {
            node, elapsedTime in
            
            if initialValue == nil || finalValue == nil{
                initialValue = node.scale
                finalValue = SCNVector3Make(initialValue.x + changeValue.x,initialValue.y + changeValue.y, initialValue.z + changeValue.z)
            }
            
            if TimeInterval(elapsedTime) < duration{
                let ratio = Float(elapsedTime) / Float(duration)
                let changeScaleValue = SCNVector3Make(changeValue.x * ratio, changeValue.y * ratio, changeValue.z * ratio)
                node.scale = SCNVector3Make(initialValue.x + changeScaleValue.x, initialValue.y + changeScaleValue.y, initialValue.z + changeScaleValue.z)
            }else{
                node.scale = finalValue
            }
        }
    }

}
