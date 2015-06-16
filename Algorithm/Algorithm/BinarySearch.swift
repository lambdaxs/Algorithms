//
//  BinarySearch.swift
//  Algorithm
//
//  Created by xiaos on 15/6/16.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation


//用于快速查找顺序数组
func binarySearch(list:[Int],value:Int) -> Int {
    var left = 0
    var right = list.count - 1
    var cur:Int
    
    while(left <= right){
        cur = (left + right)/2
        if (list[cur] > value){
            right = cur - 1
        }else if (list[cur] < value){
            left = cur + 1
        }else {
            return cur
        }
    }
    
    return 0
}


