//
//  ShellSrot.swift
//  Algorithm
//
//  Created by xiaos on 15/6/17.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation

func shellSrot(var list:[Int]) -> [Int] {
    var i:Int,j:Int
    var r:Int,temp:Int
    
    //划分数组序列
    for (r = list.count/2; r>=1; r/=2) {
        for (i=r; i<list.count ;i++) {
            temp = list[i]
            j = i - r
            while(j>=0 && temp<list[j]) {
                list[j+r] = list[j]
                j -= r
            }
            list[j+r] = temp
        }
    }
    
    return list
    
}