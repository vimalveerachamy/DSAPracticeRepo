//
//  TwoSum .swift
//  DSAlgorithmStudy
//
//  Created by MobileLove on 3/30/18.
//  Copyright © 2018 MobileLove. All rights reserved.
//

/**
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1].
 
**/

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    for(index, element) in nums.enumerated(){
        
        let nextIndex = index + 1
        
        if(nextIndex < nums.count) {
            
            for j in nextIndex..<nums.count {
                
                let resultSum = element + nums[j]
                
                if(resultSum == target){
                    return [index, j]
                }
            }
        }
    }
    
    return []
}
