//
//  SXModel.swift
//  105 - SXSwiftJ2M
//
//  Created by 董 尚先 on 15/3/4.
//  Copyright (c) 2015年 shangxianDante. All rights reserved.
//

import UIKit

class SXModel: NSObject,J2MProtocol {
    var str1:String?
    var str2:NSString?
    var b:Bool = true
    var i:Int = 0
    var f:Float = 0
    var d:Double = 0
    var info:Info?
    var other:[Info]?
    var others:NSArray?
    var demo:NSArray?
    
    static func customeClassMapping() -> [String : String]? {
        return ["info":"Info","other":"NSArray"]
    }
   
}

class SXSubModel:SXModel {
    
}

class Info: NSObject {
    
}
