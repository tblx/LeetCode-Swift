//
//  LHeapSort.swift
//  LeetCode-Swift
//
//  Created by yangxh on 2020/2/28.
//  Copyright © 2020 tblx. All rights reserved.
//

import UIKit

// 堆排序
// 时间复杂度：最坏，最好，平均时间复杂度均为O(nlogn)
// 空间复杂度：O(1)
// 类型：不稳定排序
// 参考：https://www.jianshu.com/p/dc82f09abc7c

class LHeapSort: NSObject {
    override init() {
        super.init()
        var array: [Int] = [64, 20, 50, 33, 72, 10, 23, -1, 4, 105]
        heapSort(arr: &array)
        print("\(String(describing: array))")
    }
}

extension LHeapSort {

    func heapSort(arr:inout Array<Int>) {
        //1.构建大顶堆， arr.count/2-1为层数
        for i in (0...(arr.count/2-1)).reversed(){
            //从第一个非叶子结点从下至上，从右至左调整结构
            self.adjustHeap(arr: &arr, nodeIndex: i, length: arr.count)
        }
        //2.调整堆结构+交换堆顶元素与末尾元素
        for j in  (1...(arr.count-1)).reversed(){
            arr.swapAt(0, j) //将堆顶元素与末尾元素进行交换
            self.adjustHeap(arr: &arr, nodeIndex: 0, length: j)//重新对堆进行调整
        }
    }
    
    /**
     * 调整大顶堆（仅是调整过程，建立在大顶堆已构建的基础上）
     */
    func adjustHeap(arr:inout Array<Int>,nodeIndex:Int,length:Int){
        var i = nodeIndex; // 节点位置
        let temp = arr[i];
        var k=2*i+1 // k为节点的左子树
        while k<length {//从i结点的左子结点开始，也就是2i+1处开始
            if(k+1<length && arr[k]<arr[k+1]){//如果左子结点小于右子结点，k指向右子结点
                k+=1;
            }
            if(arr[k] > temp){//如果子节点大于父节点，将子节点值赋给父节点（不用进行交换）
                arr[i] = arr[k];
                i = k;
            }else{
                break;
            }
            k=k*2+1 // k为交换位置的左子树 重复以上步骤
        }
        arr[i] = temp;//将temp值放到最终的位置
    }
}


