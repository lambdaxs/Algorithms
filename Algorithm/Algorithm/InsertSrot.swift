//
//  InsertSrot.swift
//  Algorithm
//
//  Created by xiaos on 15/6/17.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation


//while循环中每次j的值为找出的较小值该插入位置的索引
func insertSrot(var list:[Int]) -> [Int] {
    var i:Int
    var j:Int
    var temp:Int
    
    for (i = 1; i<list.count; i++) {
        temp = list[i]
        j = i - 1
        //若前面大于后面将小的放在前面，若前面小于后面不变
        //每次比较的时候，选取合适的地方插入最小的
        while(j>=0 && temp<list[j]) {
            list[j+1] = list[j]
            j--
        }
        list[j+1] = temp
    }
    
    return list
}