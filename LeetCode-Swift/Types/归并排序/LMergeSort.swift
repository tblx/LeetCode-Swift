//
//  LMergeSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/27.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 归并排序
// 时间复杂度：O(nlgn）,对单链表排序O(1）
// 空间复杂度：O(n）


/**
 时间复杂度为O(nlgn）的主要有：归并排序、快速排序、堆排序。
 时间复杂度为O(n）的主要有：选择排序、插入排序。
 堆排序的空间复杂度为（n)
 */
class LMergeSort: NSObject {
    
    override init() {
        super.init()
        
        let result = mergeSort([1,5,27,34,223,54,3,67,29])
        print("归并排序结果：\(String(describing: result))")
    }
}

extension LMergeSort {
    
    func mergeSort(_ arrayA:[Int]?) -> [Int]? {
        guard let array = arrayA, array.count > 1 else {
            return arrayA
        }
        let index = Int(array.count / 2)
        let left = mergeSort(Array(array[0..<index]))
        let right = mergeSort(Array(array[index...array.count-1]))
        return merge(left, right)
    }
    
    func merge(_ leftArray:[Int]?, _ rightArray:[Int]?) -> [Int]? {
        
        guard let left = leftArray, let right = rightArray else {
            return leftArray == nil ? rightArray : leftArray
        }
        
        var result:[Int]? = []
        var i:Int = 0
        var j:Int = 0
        
        while i < left.count, j < right.count{
            if left[i] <= right[j] {
                result?.append(left[i])
                i+=1
            }else {
                result?.append(right[j])
                j+=1
            }
        }
        
        if i < left.count {
            let array = Array(left[i..<left.count])
            result?.append(contentsOf: array)
        }
        
        if j < right.count {
            let array = Array(right[j..<right.count])
            result?.append(contentsOf: array)
        }
        
        return result
    }
}
