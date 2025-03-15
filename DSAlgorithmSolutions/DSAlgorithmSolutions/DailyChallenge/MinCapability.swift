//
//  MinCapability.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/15/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//

/**
 
 2560. House Robber IV

 There are several consecutive houses along a street, each of which has some money inside. There is also a robber, who wants to steal money from the homes, but he refuses to steal from adjacent homes.

 The capability of the robber is the maximum amount of money he steals from one house of all the houses he robbed.

 You are given an integer array nums representing how much money is stashed in each house. More formally, the ith house from the left has nums[i] dollars.

 You are also given an integer k, representing the minimum number of houses the robber will steal from. It is always possible to steal at least k houses.

 Return the minimum capability of the robber out of all the possible ways to steal at least k houses.
 
 */

func minCapability(_ nums: [Int], _ k: Int) -> Int {
    
    var minReward = 1
    var maxReward = nums.max()!
    let count = nums.count
    
    while minReward < maxReward {
        let midReward = (minReward + maxReward) / 2
        var possibleThefts = 0
        var index = 0
        
        while index < count {
            if nums[index] <= midReward { possibleThefts += 1; index += 1 }
            index += 1
        }
        
        if possibleThefts >= k { maxReward = midReward }
        else { minReward = midReward + 1 }
    }

    return minReward
}
