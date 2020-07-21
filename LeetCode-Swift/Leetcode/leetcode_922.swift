//
//  leetcode922.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/20.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation


/*
 922. Sort Array By Parity II
 https://leetcode.com/problems/sort-array-by-parity-ii/
 */

class leetcode_922Solution {
    
    class func sortArrayByParityII(_ A:[Int]) -> [Int] {
        var result = A
        var eIndex:Int = 1
        for aIndex in 0..<result.count where aIndex % 2 == 0  {
            if result[aIndex] % 2 != 0 {
                for bIndex in eIndex..<result.count where bIndex % 2 != 0 {
                    if result[bIndex] % 2 == 0 {
                        result.swapAt(eIndex, aIndex)
                        break
                    }
                    if eIndex < result.count - 2 {
                        eIndex += 2
                    }
                }
            }
        }
        return result
    }
}


/*
 元素交换两种方法
 
 array.swapAt(a, b)

 (array[a], array[b]) = (array[b], array[a])
 
 */

