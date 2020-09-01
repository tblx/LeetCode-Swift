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
        
//        let mergeResult = leetcode_56Solution.merge([[1,3],[2,6],[8,10],[15,18]])
        //        print(mergeResult)

//        let nums1 = [61,24,20,58,95,53,17,32,45,85,70,20,83,62,35,89,5,95,12,86,58,77,30,64,46,13,5,92,67,40,20,38,31,18,89,85,7,30,67,34,62,35,47,98,3,41,53,26,66,40,54,44,57,46,70,60,4,63,82,42,65,59,17,98,29,72,1,96,82,66,98,6,92,31,43,81,88,60,10,55,66,82,0,79,11,81]
//        let nums2 = [5,25,4,39,57,49,93,79,7,8,49,89,2,7,73,88,45,15,34,92,84,38,85,34,16,6,99,0,2,36,68,52,73,50,77,44,61,48]
//        print(leetcode_350Solution.intersection(nums1, nums2))
        
        leetcode_147Solution()
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

