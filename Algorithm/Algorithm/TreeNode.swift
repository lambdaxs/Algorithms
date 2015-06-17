//
//  Tree.swift
//  Algorithm
//
//  Created by xiaos on 15/6/16.
//  Copyright (c) 2015年 com.xsdota. All rights reserved.
//

import Foundation

class TreeNode: DebugPrintable {
    var value = 0
    var leftNode: TreeNode?
    var rightNode: TreeNode?
    
    init(_ value: Int = 0, _ left: TreeNode? = nil, _ right: TreeNode? = nil) {
        self.value = value
        self.leftNode = left
        self.rightNode = right
    }
    
    private func printTree(tree: TreeNode) -> String {
        var s = ""
        if let left = tree.leftNode {
            s = "left=\(printTree(left))"
        }
        if let right = tree.rightNode {
            s = "\(s), right=\(printTree(right))"
        }
        
        if s.isEmpty {
            return "\(tree.value):-"
        } else {
            return "\(tree.value):( \(s) )"
        }
    }
    
    var debugDescription: String {
        get {
            return printTree(self)
        }
    }
    
}
