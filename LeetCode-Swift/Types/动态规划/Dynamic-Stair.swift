//
//
//  Dynamic-Stair.swift
//  LeetCode-Swift
//
//  Created by kerwin on 2019/8/30.
//
    

/**
 动态规划爬楼梯题目
 */

import UIKit

class Dynamic_Stair: NSObject {
    
    func getCimbingWays(n:Int) -> Int {
        guard n > 2 else {
            return max(0, n);
        }
        
        var left:Int = 1;
        var right:Int = 2;
        var tem:Int = 0;
        for _ in 2..<n {
            tem = left + right
            left = right
            right = tem
        }
        return tem
    }
}
