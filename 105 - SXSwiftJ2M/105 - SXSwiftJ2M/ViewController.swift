//
//  ViewController.swift
//  105 - SXSwiftJ2M
//
//  Created by 董 尚先 on 15/3/4.
//  Copyright (c) 2015年 shangxianDante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let json = loadJSON()
        let tools = SXSwiftJ2M()
        println(tools.GetModelInfo(SXModel.self)!)
//        let object = SXSwiftJ2M.sharedManager.loadIVars(SXModel.self)
//
//        println(object)
    }

    func loadJSON() -> NSDictionary{
        
        let path = NSBundle.mainBundle().pathForResource("Model01.json", ofType: nil)
        let data = NSData(contentsOfFile: path!)
        
       return NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.allZeros, error: nil) as!NSDictionary
    }

}

