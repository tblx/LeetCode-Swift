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
        
        let root = TreeNode.init(5)
        let left = TreeNode.init(10)
        let right = TreeNode.init(10)
        root.left = left
        root.right = right
        
        left.left = TreeNode.init(1)
        left.right = TreeNode.init(2)
        right.left = TreeNode.init(2)
        right.right = TreeNode.init(1)
        
        let obj = SymmetricTree()
        print(obj.isSymmetric(root))
    }


}

