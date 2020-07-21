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




class symmetricTreeNode {
    
    // 101 对称二叉树
    func isSymmetric(_ root: TreeNode?) -> Bool {
        return isMirror(root?.left, root?.right)
    }
    
    func isMirror(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }
        
        if left == nil || right == nil {
            return false
        }
        
        return left?.val == right?.val && isMirror(left?.left, right?.right) && isMirror(left?.right, right?.left)
    }
    
    
    // 671 二叉树第二小的节点

    func findSecondMinimumValue(_ root: TreeNode?) -> Int {
       
        guard let root = root, let left = root.left, let right = root.right else {
            return -1
        }
                
        let minLeft = dfsMinimumValue(node: left)
        let minRight = dfsMinimumValue(node: right)

        if minLeft == root.val && minRight == root.val {
            return -1
        }else {
            return min(minLeft, minRight)
        }
    }
    
    func dfsMinimumValue(node: TreeNode) -> Int {
        if let left = node.left, let right = node.right {
            return min(dfsMinimumValue(node: left), dfsMinimumValue(node: right))
        }else {
            return node.val
        }
    }
    
}



