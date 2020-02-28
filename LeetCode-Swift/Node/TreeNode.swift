//
//
//  TreeNode.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/7/2.
//
    

import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
    
    func printAllNextNodeValue() {
        print("当前节点：\(val),左节点：\(left?.val),右节点：\(right?.val)")
        left?.printAllNextNodeValue()
        right?.printAllNextNodeValue()
    }
}
