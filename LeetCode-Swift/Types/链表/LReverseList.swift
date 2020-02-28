//
//  LReverseList.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/24.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

class LReverseList: NSObject {

    override init() {
        super.init()
        let node = ListNode.init(value: 13)
        let node1 = ListNode.init(value: 4)
        let node2 = ListNode.init(value: 15)
        let node3 = ListNode.init(value: 7)
        let node4 = ListNode.init(value: 17)

        node.next = node1
        node1.next = node2
        node2.next = node3
        node3.next = node4
//        let nodeList = reverseList(node)
//        nodeList?.printAllNextNodeValue()
        
//        let tailNode = findTailNodeWithLinkedLists(node, 2)
//        tailNode?.printAllNextNodeValue()
        
//        recursivelyPrintLinkedLists(node)
        
        sortList(node)?.printAllNextNodeValue()
    }
}

extension LReverseList {
    // 类型:反转链表
    // 方法:遍历
    // 链表数据 3 4 5 7
    func reverseList(_ headNode:ListNode<Int>?) -> ListNode<Int>? {
        if headNode == nil || headNode?.next == nil {
            return headNode
        }
        var newNode:ListNode<Int>? = nil
        var p:ListNode<Int>? = headNode

        while p != nil {
            let temp = p?.next              // temp = 457,57,7,nil  p=3457,457,57,7
            p?.next = newNode               // p.next = nil,3,43,543
            newNode = p                     // newNode = 3,43,543,7543
            p = temp                        // p = 457,57,7,nil
        }
        return newNode
    }
    // 类型:反转链表
    // 方法:递归
    // 链表数据 3 4 5 7
    func reverseList2(_ headNode:ListNode<Int>?) -> ListNode<Int>? {
        if headNode == nil || headNode?.next == nil {
            return headNode
        }
        let newHeader = reverseList(headNode?.next)
        headNode?.next?.next = headNode
        headNode?.next = nil
        return newHeader
    }
    
    // 类型:单链表排序
    // 方法:取值排序，重新生成链表
    // 链表数据 3 4 5 7
    func sortList(_ head:ListNode<Int>?) -> ListNode<Int>? {
        
        var nums = [Int]()
        var node = head
        
        while node != nil {
            if let n = node {
                nums.append(n.value)
            }
            node = node?.next
        }
        
        nums.sort()
        
        let newNode = ListNode(value: 0)
        node = newNode
        
        for num in nums {
            node?.next = ListNode(value: num)
            node = node?.next
        }
        
        return newNode.next
    }
    
    // 链表排序 方法二
    // https://blog.csdn.net/u012658346/article/details/51141288
    func sortList2(_ head:ListNode<Int>?) -> ListNode<Int>? {
        
        
        return nil
    }
    
    
    // 合并两个有序链表
    func mergeTwoLinkedLists(_ nodeA:ListNode<Int>?, _ nodeB:ListNode<Int>?) -> ListNode<Int>? {
        guard let a = nodeA, let b = nodeB else {
            return nodeA == nil ? nodeB : nodeA
        }
        
        if a.value < b.value {
            a.next = mergeTwoLinkedLists(a.next, b)
            return a
        }else {
            b.next = mergeTwoLinkedLists(a, b.next)
            return b
        }
    }
    
    // 找到链表倒数第N个结点
    
    func findTailNodeWithLinkedLists(_ nodeA:ListNode<Int>?,_ trailIndex:Int) -> ListNode<Int>? {
        guard let node = nodeA else {
            return nodeA
        }
        
        var behindNode:ListNode<Int>? = node
        var frondNode:ListNode<Int>? = node
        var index:Int = 0
        while frondNode?.next != nil {
            if index >= trailIndex - 1 {
                behindNode = behindNode?.next
            }
            frondNode = frondNode?.next
            index += 1
        }
        return behindNode
    }
    
    // 倒序打印链表
    
    func recursivelyPrintLinkedLists(_ nodeA:ListNode<Int>?) {
        guard let node = nodeA else {
            return
        }
        
        recursivelyPrintLinkedLists(node.next)
        print("recursivelu value:\(node.value)")
    }
    
    
    // 划分链表，将小于和大于给定值的节点划分到链表两侧 保留原有顺序 右侧大于等于
//
//    func portition(_ nodeA:ListNode<Int>, _ value:Int) -> ListNode<Int>? {
//
//        // 按照左小右大的顺序
//
//        var sNode:ListNode<Int>? = ListNode.init(value: value)
//        var lNode:ListNode<Int>? = ListNode.init(value: value)
//
//        while nodeA.next != nil {
//            if nodeA.value > value {
//                lNode?.next = nodeA
//            }else {
//                newNode?.next = ListNode.init(value: pNode.value)
//            }
//        }
//    }
}
