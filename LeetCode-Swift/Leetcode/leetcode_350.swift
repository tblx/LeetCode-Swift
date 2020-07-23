//
//  leetcode_350.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/23.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation

class leetcode_350Solution {
    class func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        let sortNums1 = nums1.sorted()
        let sortNums2 = nums2.sorted()
        
        var result:[Int] = []
        
        var itemIndex = 0
        if nums1.count > sortNums2.count {
            for (index, item) in sortNums2.enumerated() {
                if sortNums1[itemIndex...].contains(item) {
                    result.append(item)
                    itemIndex = index + 1
                }
            }
        }else {
            for (index, item) in sortNums1.enumerated() {
                if sortNums2[itemIndex...].contains(item) {
                    result.append(item)
                    itemIndex = index + 1
                }
            }
        }
        return result
    }
}
