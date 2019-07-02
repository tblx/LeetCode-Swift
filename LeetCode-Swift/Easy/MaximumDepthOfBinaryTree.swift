//
//
//  MaximumDepthOfBinaryTree.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/7/2.
//
    

import Foundation

// LeetCode 104 Maximum Depth of Binary Tree
// 二叉树最大深度

class MaximumDepthOfBinaryTree {
    
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil{
            return 0
        }
        // 1.
        return max(maxDepth(root?.left), maxDepth(root?.right)) + 1
        // 2.
        //return searchMaximumDepth(root,1)
    }
    
    func searchMaximumDepth(_ node:TreeNode?,_ depth:Int) -> Int {
        if node?.left != nil || node?.right != nil{
            return max(searchMaximumDepth(node?.left, depth+1), searchMaximumDepth(node?.right, depth+1))
        }else{
            return depth
        }
    }
}


/**
 1.
 Runtime: 28 ms, faster than 96.31% of Swift online submissions for Maximum Depth of Binary Tree.
 Memory Usage: 21.4 MB, less than 5.11% of Swift online submissions for Maximum Depth of Binary Tree.
 
 2.
 Runtime: 32 ms, faster than 69.08% of Swift online submissions for Maximum Depth of Binary Tree.
 Memory Usage: 21.8 MB, less than 5.11% of Swift online submissions for Maximum Depth of Binary Tree.
 */
