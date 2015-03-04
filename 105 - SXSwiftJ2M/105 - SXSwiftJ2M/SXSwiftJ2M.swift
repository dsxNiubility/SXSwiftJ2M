//
//  SXSwiftJ2M.swift
//  105 - SXSwiftJ2M
//
//  Created by 董 尚先 on 15/3/4.
//  Copyright (c) 2015年 shangxianDante. All rights reserved.
//

import Foundation

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
    func GetModelInfo(cls:AnyClass) ->[String:String]{
        return [String: String]()
    }
    
/// MARK:- 加载属性列表
    func loadProperties(cls:AnyClass){
    
    }
    
/// MARK:- 加载成员变量
    func loadIVars(cls:AnyClass){
    
    }
    
    
    
}
