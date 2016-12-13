//
//  SCNVector3+Extensions.swift
//  indygo_libs
//
//  Created by Tri on 12/13/16.
//  Copyright © 2016 IndygoMedia
//

import Foundation
import SceneKit
public extension SCNVector3{
    func distance(receiver:SCNVector3) -> Float{
        let xd = receiver.x - self.x
        let yd = receiver.y - self.y
        let zd = receiver.z - self.z
        return abs(Float(sqrt(xd * xd + yd * yd + zd * zd)))
    }
    
    func lenght() -> Float{
        return abs(Float(sqrt(self.x * self.x + self.y * self.y + self.z * self.z)))
    }
    static public func + (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
        return SCNVector3Make(left.x + right.x, left.y + right.y, left.z + right.z)
    }
    static public func - (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
        return SCNVector3Make(left.x - right.x, left.y - right.y, left.z - right.z)
    }
    static public func += (left: inout SCNVector3, right: SCNVector3) {
        left = left + right
    }
    static public func -= (left: inout SCNVector3, right: SCNVector3) {
        left = left - right
    }
    
    static public func * (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
        return SCNVector3Make(left.x * right.x, left.y * right.y, left.z * right.z)
    }
    static public func *= (left: inout SCNVector3, right: SCNVector3) {
        left = left * right
    }
    
    static public func * (vector: SCNVector3, scalar: Float) -> SCNVector3 {
        return SCNVector3Make(vector.x * scalar, vector.y * scalar, vector.z * scalar)
    }
    
    static public func *= (vector: inout SCNVector3, scalar: Float) {
        vector = vector * scalar
    }
    
    static public func / (left: SCNVector3, right: SCNVector3) -> SCNVector3 {
        return SCNVector3Make(left.x / right.x, left.y / right.y, left.z / right.z)
    }
    static public func /= (left: inout SCNVector3, right: SCNVector3) {
        left = left / right
    }
    
    static public func / (vector: SCNVector3, scalar: Float) -> SCNVector3 {
        return SCNVector3Make(vector.x / scalar, vector.y / scalar, vector.z / scalar)
    }
    
    static public func /= (vector: inout SCNVector3, scalar: Float) {
        vector = vector / scalar
    }
    
}
