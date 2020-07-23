//
//  leetcode_350.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/23.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation

class leetcode_350Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        let sortNums1 = nums1.sorted()
        let sortNums2 = nums2.sorted()
        
        var itemIndex = 0
        var result:[Int] = []        
        if sortNums1.count > sortNums2.count {
            for item in sortNums2 {
                if let searchIndex = sortNums1[itemIndex...].firstIndex(of: item) {
                    result.append(item)
                    itemIndex = searchIndex + 1
                }
            }
        }else {
            for item in sortNums1 {
                if let searchIndex = sortNums2[itemIndex...].firstIndex(of: item) {
                    result.append(item)
                    itemIndex = searchIndex + 1
                }
            }
        }
        
        return result
    }
}
