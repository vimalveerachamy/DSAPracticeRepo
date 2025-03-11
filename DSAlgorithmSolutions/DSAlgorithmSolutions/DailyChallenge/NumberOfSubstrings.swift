//
//  NumberOfSubstrings.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/11/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//


/**
 
 1358. Number of Substrings Containing All Three Characters

 Given a string s consisting only of characters a, b and c.

 Return the number of substrings containing at least one occurrence of all these characters a, b and c.

 Example 1:

 Input: s = "abcabc"
 Output: 10
 Explanation: The substrings containing at least one occurrence of the characters a, b and c are "abc", "abca", "abcab", "abcabc", "bca", "bcab", "bcabc", "cab", "cabc" and "abc" (again).
 
 */

func numberOfSubstrings(_ s: String) -> Int {

    var map: [Character: Int] = ["a": -1, "b": -1, "c": -1]
    let chars = Array(s)
    var result = 0
    
    for i in 0..<chars.count {
        map[chars[i]] = i
        
        if let minIdx = map.values.min(), minIdx >= 0 {
            result += minIdx + 1
        }
    }

    return result
}
