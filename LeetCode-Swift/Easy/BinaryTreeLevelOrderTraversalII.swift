//
//
//  BinaryTreeLevelOrderTraversalII.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/7/2.
//
    

import Foundation

// LeetCode 107 Binary Tree Level Order Traversal II

class BinaryTreeLevelOrderTraversalII {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }
        var nodes = [root]
        var result = [[Int]]()
        while !nodes.isEmpty {
            result.append(nodes.map{ $0.val })
            nodes = nodes.reduce([], {
                var res = $0
                if let left = $1.left {
                    res += [left]
                }
                if let right = $1.right {
                    res += [right]
                }
                return res
            })
        }
        return result.reversed()
    }
    
    func test() {
        var root = [1,2,5,6]
        root += [9]
        print(root)
    }
}
