//
//  leetcode_147.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/24.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation


public class L147_ListNode {
    public var val: Int
    public var next: L147_ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class leetcode_147Solution {
    
    init() {
                
        let node1 = L147_ListNode(-1)
        let node2 = L147_ListNode(5)
        let node3 = L147_ListNode(3)
        let node4 = L147_ListNode(4)
        let node5 = L147_ListNode(0)
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        var result = insertionSortList(node1)
        while result?.val != nil {
            print(result?.val)
            result = result?.next
        }
    }
    
    func insertionSortList(_ head: L147_ListNode?) -> L147_ListNode? {
        guard let header = head else {
            return head
        }
        var result:L147_ListNode = L147_ListNode(header.val)
        var nextNode = header.next
        while let currentNode = nextNode {
            let insertValue = currentNode.val
            // 小于首个节点，直接插入头部
            if insertValue < result.val {
                let node = L147_ListNode(insertValue)
                node.next = result
                result = node
            }else {
                // 遍历插入
                var resultNode:L147_ListNode? = result
                while resultNode != nil {
                    if let nodeValue = resultNode?.next?.val, insertValue < nodeValue {
                        let next = resultNode?.next
                        let nodeNext = L147_ListNode(insertValue)
                        nodeNext.next = next
                        resultNode?.next = nodeNext
                        break
                    }
                    // 没有找到合适节点插入，放置在最后
                    if resultNode?.next == nil {
                        resultNode?.next = L147_ListNode(insertValue)
                        break
                    }
                    resultNode = resultNode?.next
                }
            }
            nextNode = nextNode?.next
        }
        return result
    }
}
