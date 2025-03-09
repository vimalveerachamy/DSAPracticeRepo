//
//  NumberOfAlternatingGroups.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/9/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//


/**
 
 3208. Alternating Groups II

 There is a circle of red and blue tiles. You are given an array of integers colors and an integer k. The color of tile i is represented by colors[i]:

 colors[i] == 0 means that tile i is red.
 colors[i] == 1 means that tile i is blue.
 An alternating group is every k contiguous tiles in the circle with alternating colors (each tile in the group except the first and last one has a different color from its left and right tiles).

 Return the number of alternating groups.

 Note that since colors represents a circle, the first and the last tiles are considered to be next to each other.
 
 */


func numberOfAlternatingGroups(_ colors: [Int], _ k: Int) -> Int {
        var ans = 0
        var left = 0

        for right in 0..<colors.count + k - 1 {
            let ind = (right) % colors.count
            let ind1 = (right + 1) % colors.count
            
            if colors[ind] == colors[ind1] {
                left = right
             }
            
            if right - left + 1 < k { continue }

            ans += 1
            left  += 1
        }

        return ans
    }
