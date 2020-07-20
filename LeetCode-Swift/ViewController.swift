//
//
//  SymmetricTree.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/7/1.
//

import UIKit

class ViewController: UIViewController {
    
    var linkedList:LinkList<Int>!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //vertifyBinary()
        //initLinkedList()
        //LReverseList()
        //LReverseBinary()
        
        //LMergeSort()
        //LBubbleSort()
        //LSelectionSort()
        //LInsertionSort()
        //LShellSort()
        
        //LQuickSort()
        
//        LHeapSort()
        
//        let result = leetcode_922Solution.sortArrayByParityII([4,2,5,7])
//        print(result)
        
        let mergeResult = leetcode_56Solution.merge([[1,3],[2,6],[8,10],[15,18]])
        print(mergeResult)
    }
    
}

// 验证链表
extension ViewController {
    
    func initLinkedList() {
        let node = ListNode.init(value: 2)

        linkedList = LinkList()
        linkedList.head = node
        linkedList.append(3)
        linkedList.append(9)
        linkedList.append(23)
        linkedList.append(20)
        linkedList.append(4)
        linkedList.append(0)
        linkedList.append(15)
        
        if let last = linkedList.last {
            print("\(last.value)")
        }
    }
}

// 验证树
extension ViewController {
    func vertifyBinary() {
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

