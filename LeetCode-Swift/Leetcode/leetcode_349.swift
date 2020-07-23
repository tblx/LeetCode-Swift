//
//  leetcode_349.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2020/7/22.
//  Copyright © 2020 tblx. All rights reserved.
//

import Foundation

class leetcode_349Solution {
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        let set1 = Set(nums1)
        let set2 = Set(nums2)
        
        var result:[Int] = []
        if set1.count > set2.count {
            for item in set2 where set1.contains(item){
                result.append(item)
            }
        }else {
            for item in set1 where set2.contains(item){
                result.append(item)
            }
        }
        return result
    }
}
