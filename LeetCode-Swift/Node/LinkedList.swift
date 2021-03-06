//
//
//  LinkedList.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/8/22.
//
    

import UIKit

// 双向链表

class ListNode<T:Equatable>:Equatable {
    
    var value: T
    weak var previous: ListNode?
    var next: ListNode?
    init(value: T) {
        self.value = value
        self.previous = nil
        self.next = nil
    }
    
    static func == (lhs: ListNode<T>, rhs: ListNode<T>) -> Bool {
        return lhs.value == rhs.value && lhs.previous == rhs.previous && lhs.next == rhs.next
    }
    
    func printAllNextNodeValue() {
        print(value)
        var item = next
        while item != nil {
            print(item?.value ?? "")
            item = item?.next
        }
    }
}

class LinkList<T:Equatable> {
    
    typealias Node = ListNode<T>
    
    var head: Node?
    var first: Node? {
        return head
    }
    //var last: Node? 可以手动保存尾部结点
    var last: Node? {
        guard var node = head else { return nil }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    var isEmpty: Bool {
        return head == nil
    }
    
    var count: Int {
        guard var node = head else { return 0 }
        var cut = 0
        while let next = node.next {
            node = next
            cut += 1
        }
        return cut
    }
    
}

// 双向链表(非循环链表) Head不计数

extension LinkList {
    
    func printListNodesValue() {
        guard var node = head else { return }
        while let next = node.next {
            print(String.init(format: "***%@***", next.value as! CVarArg))
            node = next
        }
    }
    
    // 正序查找结点
    func query(at index: Int) -> Node? {
        guard var node = head, index >= 0 else { return nil }
        var cut = 0
        while let next = node.next {
            node = next
            if cut == index {
                return node
            }
            cut += 1
        }
        return nil
    }
    // 倒序查找结点, 双指针查找
    func revertQuery(at index: Int) -> Node? {
        guard var front = head, var behind = head else { return nil }
        var cut = 0
        while let next = front.next {
            front = next
            cut += 1
            if let next = behind.next, cut > index {
                behind = next
            }
        }
        return behind
    }
    
    // 增加结点
    func append(_ value: T) {
        let newNode = Node.init(value: value)
        if let last = last {
            last.next = newNode
            newNode.previous = last
        }else {
            // 空链表
            head = newNode
        }
    }
    
    // 插入
    func insert(_ value: T, at index:Int) {
        guard var node = head, index >= 0 else { return }
        var cut = 0
        let newNode = Node.init(value: value)
        while let next = node.next {
            if cut == index {
                next.previous = newNode
                newNode.next = next
                
                node.next = newNode
                newNode.previous = node
                break
            }
            node = next
            cut += 1
        }
    }
    
    // 删除
    func remove(_ value:T) {
        guard var node = head else { return }
        var cut = 0
        while let next = node.next {
            node = next
            if node.value == value {
                node.previous?.next = node.next
                node.next?.previous = node.previous
            }
            cut += 1
        }
    }
    
    // 删除
    func remove(at index:Int) {
        guard var node = head, index >= 0 else { return }
        var cut = 0
        while let next = node.next {
            node = next
            if cut == index {
                node.previous?.next = node.next
                node.next?.previous = node.previous
                break
            }
            cut += 1
        }
    }
}
