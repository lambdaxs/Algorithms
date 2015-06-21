//
//  Tower.swift
//  Algorithm
//
//  Created by xiaos on 15/6/18.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation

//求解汉诺塔问题
func tower(var #topNum:Int,#left:String,#mid:String,#right:String) {
    
    
    if (topNum == 1) {
        println("D1从\(left)移到\(right)")
        
    }else {
        tower(topNum: topNum-1, left: left, mid: right, right: mid)
        println("D\(topNum)从\(left)移到\(right)")
        tower(topNum: topNum-1, left: mid, mid: left, right: right)
    }
    
}