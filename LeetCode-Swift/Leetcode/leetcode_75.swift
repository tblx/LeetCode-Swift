//
//  leetcode_75.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/21.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation

/*
 https://leetcode-cn.com/problems/sort-colors/
 */

class leetcode_75Solution {
    class func sortColors(_ nums: inout [Int]) {
        
        var current = 0
        var preIndex = 0
        var lastIndex = nums.count - 1
        
        while current <= lastIndex {
            let item = nums[current]
            if item == 0 {
                nums.swapAt(preIndex, current)
                preIndex += 1
                current += 1
            }else if item == 2 {
                nums.swapAt(lastIndex, current)
                lastIndex -= 1;
            }else {
                current += 1
            }
        }
    }
}
