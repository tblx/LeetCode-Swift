//
//  LShellSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/28.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 希尔排序，别称递减增量排序算法，是插入排序的一种更高效的改进版本
// 时间平均复杂度：O(n^2) 最坏复杂度:O(TODO) 最好复杂度: O(nlogn) 空间复杂度: O(1) 不稳定

class LShellSort: NSObject {
    override init() {
        super.init()
        var array: [Int] = [64, 20, 50, 33, 72, 10, 23, -1, 4, 5]
        shellSort(&array)
        print("\(String(describing: array))")
    }
}

extension LShellSort {
    func insertionSort(_ list: inout[Int], start: Int, gap: Int) {
        for i in stride(from: (start + gap), to: list.count, by: gap) {
            let currentValue = list[i]
            var pos = i
            while pos >= gap && list[pos - gap] > currentValue {
                list[pos] = list[pos - gap]
                pos -= gap
            }
            list[pos] = currentValue
        }
    }

    func shellSort(_ list: inout [Int]) {
        var sublistCount = list.count / 2
        while sublistCount > 0 {
            for pos in 0..<sublistCount {
                insertionSort(&list, start: pos, gap: sublistCount)
            }
            sublistCount = sublistCount / 2
        }
    }
}
