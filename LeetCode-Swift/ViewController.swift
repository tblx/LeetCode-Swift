//
//
//  SymmetricTree.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/7/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let root = TreeNode.init(3)
        let left = TreeNode.init(9)
        let right = TreeNode.init(20)
        root.left = left
        root.right = right

        right.left = TreeNode.init(15)
        right.right = TreeNode.init(7)
        
        let obj = SymmetricTree()
        print(obj.isSymmetric(root))
        
        BinaryTreeLevelOrderTraversalII().levelOrderBottom(root)
        
        let stair = Dynamic_Stair()
        print(stair.getCimbingWays(n: 2))
        print(stair.getCimbingWays(n: 3))
        print(stair.getCimbingWays(n: 4))
        print(stair.getCimbingWays(n: 5))

    }
}

