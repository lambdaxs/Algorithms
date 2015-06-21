//
//  InsertSrot.swift
//  Algorithm
//
//  Created by xiaos on 15/6/17.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation

func insertSort(var list:[Int]) -> [Int] {
    for (var i=1; i<list.count; i++) {
        var key = list[i]
        var j = i - 1
        //每次将选取的数与左边所有数比较，直到找到合适的位置索引j+1,原位置的数顺次向后移动一位
        while(j >= 0 && list[j]>key) {
            list[j+1] = list[j]
            j = j - 1
        }
        //找到的合适位置为j+1,将该数插入到该位置
        list[j+1] = key
    }
    
    return list
}

func insertSortDown(var list:[Int]) -> [Int] {
    for (var i=1; i<list.count; i++) {
        var key = list[i]
        var j = i - 1
        //每次将选取的数与左边所有数比较，直到找到合适的位置索引j+1,原位置的数顺次向后移动一位
        while(j >= 0 && list[j]<key) {
            list[j+1] = list[j]
            j = j - 1
        }
        //找到的合适位置为j+1,将该数插入到该位置
        list[j+1] = key
    }
    
    return list
}




