//
//
//  SymmetricTree.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/7/1.
//
    

import Foundation

// LeetCode 101 Symmetric Tree


/**
 题目：判断是否为对称二叉树
 思路：
 1.如果一个节点左右子节点都为空，则该节点左右子树对阵
 2.right.right == left.left && right.left == left.right
 */


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class SymmetricTree: NSObject {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return checkIsEqual(left: root?.left, right: root?.right)
    }
    
    func checkIsEqual(left:TreeNode? = nil,right:TreeNode? = nil) -> Bool {
        if let leftVal = left, let rightVal = right {
            guard leftVal.val == rightVal.val else{
                return false
            }
            return checkIsEqual(left: leftVal.left, right: rightVal.right) && checkIsEqual(left: leftVal.right, right: rightVal.left)
        }else{
            return left == nil && right == nil
        }
    }
}
