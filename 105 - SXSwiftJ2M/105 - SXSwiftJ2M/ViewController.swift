//
//  ViewController.swift
//  105 - SXSwiftJ2M
//
//  Created by 董 尚先 on 15/3/4.
//  Copyright (c) 2015年 shangxianDante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var jsonArray:NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let json = loadJSON()
        let obj = SXSwiftJ2M.sharedManager.swiftObjWithDict(json, cls: SXModel.self) as!SXModel

        println(obj)
    }

    func loadJSON() -> NSDictionary{
        
        let path = NSBundle.mainBundle().pathForResource("Model01.json", ofType: nil)
        let data = NSData(contentsOfFile: path!)
        
       return NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.allZeros, error: nil) as!NSDictionary
    }

}

