//
//  LSelectionSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/28.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 选择排序
// 稳定性：是稳定算法，因为排序过程中相邻会依次比较，不会打乱相同元素的相对位置。
// 空间复杂度：整个排序过程是在原数组上进行排序的，所以是 O(1)。
// 时间复杂度：排序算法包含双层嵌套循环，故为 O（n^2）


class LSelectionSort: NSObject {
    override init() {
        super.init()
        let nums = [1,3,6,9,0,5,2,4,8,7]
        print(selectionSort(nums)!)
    }
}

extension LSelectionSort {
    
    func selectionSort(_ array:[Int]?) -> [Int]? {
        
        guard var result = array else {
            return array
        }
        
        for i in 0..<result.count {
            var minIndex = i
            for j in i+1..<result.count {
                if result[j] < result[minIndex] {
                    minIndex = j
                }
            }
            if minIndex != i {
                result.swapAt(i, minIndex)
            }
        }
        return result
    }
}
