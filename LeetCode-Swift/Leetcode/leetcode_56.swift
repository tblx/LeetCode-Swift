//
//  leetcode_56.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/20.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation

/*
 56. Merge Intervals
 https://leetcode.com/problems/merge-intervals/
 */

class leetcode_56Solution {
    class func merge(_ intervals: [[Int]]) -> [[Int]] {
        
        if intervals.count <= 1 {
            return intervals
        }
        
        let sortArray = intervals.sorted { (array1, array2) -> Bool in
            guard let value1 = array1.first, let value2 = array2.first else {
                return false
            }
            return value1 < value2
        }
        
        var result:[[Int]] = [sortArray.first!]
        for index in 1..<sortArray.count {
            let array = sortArray[index]
            
            guard let lastValue = result.last?.last, let firstValue = array.first else {
                continue
            }
            
            if lastValue < firstValue {
                // 区间没有交集
                result.append(array)
            }else {
                // 区间有交集时 取result最后一个区间和当前遍历区间最后值的最大值
                if let currentArrayLast = array.last, let first = result.last?.first, let last = array.last {
                    result[result.count - 1] = [first, max(currentArrayLast, last)]
                }
            }
        }
        
        return result
    }
}
