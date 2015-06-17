//
//  SelectSort.swift
//  Algorithm
//
//  Created by xiaos on 15/6/17.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation



//关键点在于每次选出最小的放在最左边
func selectSort(var list:[Int]) -> [Int] {
    var min:Int
    var out:Int
    var temp:Int
    var index:Int
    
    for (out = 0; out<list.count - 1; out++) {
        min = out
        for (index = out+1; index < list.count; index++) {
            if (list[min] > list[index]) {
                min = index
            }
        }
        temp = list[min]
        list[min] = list[out]
        list[out] = temp
    }
    
    return list
    
}