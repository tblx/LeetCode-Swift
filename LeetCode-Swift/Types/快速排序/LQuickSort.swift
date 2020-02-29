//
//  LQuickSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/27.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 快速排序
// 时间复杂度：
// 空间复杂度：
// https://www.bilibili.com/video/av39093184?from=search&seid=1775769769133804004

class LQuickSort: NSObject {
    override init() {
        super.init()
        var array:[Int] = [1,5,27,34,223,54,3,67,29]
        quickSort(&array, low: 0, high: 8)
        print("\(String(describing: array))")
    }
}

extension LQuickSort {
        
    func quickSort(_ array:inout [Int], low:Int, high:Int) {
        if low >= high {
            return
        }
        
        let endValue = array[high]
        
        var left = low
        var right = high - 1
        
        while left < right {
            
            while array[left] < endValue, left < right {
                left+=1
            }
            while array[right] >= endValue, left < right {
                right-=1
            }
            
            array.swapAt(left, right)
        }
        
        if array[left] >= endValue {
            array.swapAt(left, high)
        }else {
            left+=1
        }
        
        quickSort(&array, low: low, high: left-1)
        quickSort(&array, low: left+1, high: high)
    }
}
