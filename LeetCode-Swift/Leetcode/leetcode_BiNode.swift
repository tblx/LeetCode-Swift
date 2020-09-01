//
//  leetcode_BiNode.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/8/10.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation

/*
 17.12 BiNode
 
 解题思路，取左侧最后节点作为链表头
 */



class leetcode_BiNodeSolution {
    func convertBiNode(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        let left = sortLeftNode(root.left)
        root.right = left
        left?.right = sortRightNode(root.right)
        
        return root
    }
    
    func sortRightNode(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        let left = sortLeftNode(root.left)
        root.right = left
        left?.right = sortRightNode(root.right)
        
        return root
    }
    
    func sortLeftNode(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }
        
        let left = sortLeftNode(root.left)
        root.right = left
        left?.right = sortRightNode(root.right)
        
        return root
    }

}
