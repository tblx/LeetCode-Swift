//
//  LInsertionSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/28.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 插入排序
// 时间平均复杂度：O(n^2) 最坏复杂度:O(n^2) 最好复杂度: O(n)
// 空间复杂度: O(1)
// 类型：稳定排序

class LInsertionSort: NSObject {
    override init() {
        super.init()
        
        let result = insertionSort([1,5,27,34,223,54,3,67,29])
        print("\(String(describing: result))")
    }
}

extension LInsertionSort {
    
    // 不交换排序，依次移动位置，找到合适的位置再插入
    func insertionSort(_ array:[Int]?) -> [Int]? {
        guard var a = array, a.count > 1 else {
            return array
        }
        
        for index in 1..<a.count {
            var y = index
            while y > 0 && a[y-1] > a[y] {
                a.swapAt(y-1, y)
                y-=1
            }
        }
        return a
    }
    
    // 交换排序，每次交换
    func insertionExchangeSort(_ array:[Int]?) -> [Int]? {
        guard var a = array, a.count > 1 else {
            return array
        }
        
        for index in 1..<a.count {
            var y = index
            let temp = a[y]
            while y > 0 && a[y-1] > temp {
                a[y] = a[y-1]
                y-=1
            }
            a[y] = temp
        }
        return a
    }
    
}
