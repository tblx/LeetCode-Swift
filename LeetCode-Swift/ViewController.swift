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
    }

    func testNodeQuery() {
        let list = LinkList<Any>()
        list.head = ListNode(value: nil)
        list.head?.next = ListNode(value: "a")
        list.head?.next?.next = ListNode(value: "b")
        print(list.head?.value as Any,list.head?.next?.value as Any,list.last?.value as Any)
        
        print(list.count)
        
        let node = list.queryNode(at: 2)
        print(node?.value as Any)
        
        let revertNode = list.revertQueryNode(at: 2)
        print(revertNode?.value as Any)
        
        list.add("d")
        list.printListNodesValue()
        print("\n")
        list.insert("c", at: 2)
        list.printListNodesValue()
        print("\n")
    }
}

