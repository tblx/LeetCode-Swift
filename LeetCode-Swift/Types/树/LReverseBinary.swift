//
//  LReverseBinary.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/25.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

class LReverseBinary: NSObject {
    
    override init() {
        super.init()
        
        let node = TreeNode.init(5)
        let left = TreeNode.init(4)
        let right = TreeNode.init(3)
        
        left.left = TreeNode.init(7)
        left.right = TreeNode.init(8)
        
        right.left = TreeNode.init(11)
        right.right = TreeNode.init(12)
        
        node.left = left
        node.right = right
        
        let newNode = reverseBinary(node)
        newNode?.printAllNextNodeValue()
    }
}

extension LReverseBinary {
    // 反转二叉树
    func reverseBinary(_ root:TreeNode?) -> TreeNode? {
        
        if root == nil{
            return root
        }
        
        root?.left = reverseBinary(root?.left)
        root?.right = reverseBinary(root?.right)
        
        let tem = root?.left
        root?.left = root?.right
        root?.right = tem
        return root
    }
}
