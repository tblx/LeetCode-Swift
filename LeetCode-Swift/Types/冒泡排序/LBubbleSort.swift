//
//  LBubbleSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/28.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 快速排序
// 时间平均复杂度：O(n^2) 最坏复杂度:O(n^2) 最好复杂度: O(n) 空间复杂度: O(1) 稳定

class LBubbleSort: NSObject {
    override init() {
        super.init()
        let nums = [1,3,6,9,0,5,2,4,8,7]
        print(bubbleSort(nums)!)
    }
}

extension LBubbleSort {
    
    func bubbleSort(_ array:[Int]?) -> [Int]? {
        
        guard var result = array else {
            return array
        }
        
        for i in 0..<result.count {
            for j in 0..<result.count - i - 1 {
                if result[j] < result[j+1] {
                    result.swapAt(j, j+1)
                }
            }
        }
        return result
    }
}
