//
//  SXSwiftJ2M.swift
//  105 - SXSwiftJ2M
//
//  Created by 董 尚先 on 15/3/4.
//  Copyright (c) 2015年 shangxianDante. All rights reserved.
//

import Foundation

@objc protocol J2MProtocol{
    
    /**
    自定义的类型映射表
    
    :returns: 返回[属性名：自定义对象名称]
    */
    static func customeClassMapping()->[String:String]?
}

class SXSwiftJ2M {
    
    /// 创建单例
    static let sharedManager = SXSwiftJ2M()

/// MARK:- 使用字典转模型
    /**
    使用字典转模型
    
    :param: dict 数据字典
    :param: cls  模型的类
    
    :returns: 实例化类的对象
    */
    func swiftObjWithDict(dict:NSDictionary,cls:AnyClass) ->AnyObject?{
        return nil
    }
    
   
/// MARK:- 将数组转化成模型数组
    /**
    将数组转化成模型数组
    
    :param: array 数组
    :param: cls   模型类
    
    :returns: 模型数组
    */
    func swiftObjWithArray(array:NSArray,cls:AnyClass) ->AnyObject?{
        return nil
    }

/// MARK:- 获取模型类的所有信息
    /**
    获取模型类的所有信息
    
    :param: cls 模型类
    
    :returns: 完整信息字典
    */
    func GetAllModelInfo(cls:AnyClass)->[String:String]{
        return [String: String]()
    }
    
/// MARK:- 获取给定类的信息
    func GetModelInfo(cls:AnyClass) ->[String:String]!{
        
        /// 判断是否遵循了协议，一旦遵循协议就是有自定义对象
        var mapping:[String : String]?
        if (cls.respondsToSelector("customeClassMapping")){    // $$$$$
            
            /// 得到属性字典
            mapping = cls.customeClassMapping()
            
            println(mapping!)
        }
        
        /// 必须用UInt32否则不能调用
        var count:UInt32 = 0
        
        let ivars = class_copyIvarList(cls, &count)
        
        println("有 \(count) 个属性")
        
        var dictInfo = [String:String]()
        
        for i in 0..<count{
            /// 必须再强转成Int否则不能用来做下标
            let ivar = ivars[Int(i)]
            
            let cname = ivar_getName(ivar)
            let name = String.fromCString(cname)!
            
            /// 去属性字典中取，如果没有就使用后面的变量
            let type = mapping?[name] ?? ""   // $$$$$
            
            dictInfo[name] = type
            
        }
        /// 释放
        free(ivars)
        return dictInfo
    }
    
/// MARK:- 加载属性列表
    func loadProperties(cls:AnyClass){
        /// 必须用UInt32否则不能调用
        var count:UInt32 = 0

        let properties = class_copyPropertyList(cls, &count)
        
        println("有 \(count) 个属性")
        
        for i in 0..<count{
            /// 必须再强转成Int否则不能用来做下标
            let property = properties[Int(i)]
            
            let cname = property_getName(property)
            let name = String.fromCString(cname)!
            
            let ctype = property_getAttributes(property)
            let type = String.fromCString(ctype)!
            
            println(name + "--------" + type)
        }
        /// 释放
        free(properties)
        /// 基本数据类型不对，swift数组和字符串不对
    }
    
/// MARK:- 加载成员变量
    func loadIVars(cls:AnyClass){
        
        /// 必须用UInt32否则不能调用
        var count:UInt32 = 0
        
        let ivars = class_copyIvarList(cls, &count)
        
        println("有 \(count) 个属性")
        
        for i in 0..<count{
            /// 必须再强转成Int否则不能用来做下标
            let ivar = ivars[Int(i)]
            
            let cname = ivar_getName(ivar)
            let name = String.fromCString(cname)!
            
            let ctype = ivar_getTypeEncoding(ivar)
            let type = String.fromCString(ctype)!
            
            println(name + "--------" + type)
        }
        /// 释放
        free(ivars)
        /// 能够检测通过
    }
    
    
    
}
