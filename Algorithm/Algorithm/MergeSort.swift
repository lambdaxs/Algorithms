//
//  MergeSort.swift
//  Algorithm
//
//  Created by xiaos on 15/6/18.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation


//归并排序节省时间，对空间有一定要求
func mergeSort(left:[Int],right:[Int]) -> [Int] {
    
    var a = left + right
    var i=0,j=0,k=0
    
    //当其中一个数组遍历完后跳出，并保留一个继续添加的索引
    while(i<left.count && j<right.count) {
        if (left[i] <= right[j]) {
            a[k++] = left[i++]
        }else {
            a[k++] = right[j++]
        }
    }
    
    //当右边数组为空，将左边数组一次复制到a数组后面
    while(i<left.count) {
        a[k++] = left[i++]
    }
    
    //当左边数组为空，将右边数组一次复制到a数组后面
    while(j<right.count) {
        a[k++] = right[j++]
    }
    return a

}




func reMergeSort(list:[Int],left:Int,right:Int) {
    
    if (left == right) {
        return
    }else {
        var mid = (left+right)/2
        reMergeSort(list, left, mid)
        reMergeSort(list, mid+1, right)
//        println(merge(list,left,mid,right))
    }
}

func merge(var a:[Int],left:Int,right:Int) -> [Int]{
    
    var l = [Int]()
    var r = [Int]()
    var cur = (a.count/2)-1
    
    for (var i=left; i <= cur; i++){
        l.append(a[i])
    }
    
    for (var i=cur+1; i <= right; i++){
        r.append(a[i])
    }
    
    var i=0,j=0,k=0
    
    //当其中一个数组遍历完后跳出，并保留一个继续添加的索引
    while(i < l.count && j < r.count) {
        if (l[i] <= r[j]) {
            a[k++] = l[i++]
        }else {
            a[k++] = r[j++]
        }
    }
    
    //当右边数组为空，将左边数组一次复制到a数组后面
    while(i<l.count) {
        a[k++] = l[i++]
    }
    
    //当左边数组为空，将右边数组一次复制到a数组后面
    while(j<r.count) {
        a[k++] = r[j++]
    }
    
    return a
    
}