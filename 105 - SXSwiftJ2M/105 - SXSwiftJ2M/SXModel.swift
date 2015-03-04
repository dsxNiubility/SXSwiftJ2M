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
        return ["info": "\(Info.self)", "other": "\(Info.self)", "others": "\(Info.self)", "demo": "\(Info.self)"];  // $$$$$   这么写是因为一个类完整的名称应该是命名空间加类名
    }
   
}

class SXSubModel:SXModel {
    var boy:String?
}

class Info: NSObject {
    var name:String?
}
