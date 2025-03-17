//
//  DivideArray.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/17/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//

/**
 
 2206. Divide Array Into Equal Pairs

 You are given an integer array nums consisting of 2 * n integers.

 You need to divide nums into n pairs such that:

 Each element belongs to exactly one pair.
 The elements present in a pair are equal.
 Return true if nums can be divided into n pairs, otherwise return false.
 
 */


func divideArray(_ nums: [Int]) -> Bool {
    guard nums.count > 0 else { return false }
    
    var numsMap = [Int : [Int]]()
    for (index, num) in nums.enumerated(){
        if let _ = numsMap[num]{
            numsMap[num]?.append(index)
        }else{
            numsMap[num] = [index]
        }
    }
    
    return numsMap.keys.filter { numsMap[$0]!.count % 2 == 0 }.count ==  numsMap.keys.count
}
