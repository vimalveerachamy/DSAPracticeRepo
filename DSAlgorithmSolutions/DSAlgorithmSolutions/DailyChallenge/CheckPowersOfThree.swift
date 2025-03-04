//
//  CheckPowersOfThree.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/4/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//

class Solution {
    
    func checkPowersOfThree(_ n: Int) -> Bool {
        
        var n = n
        
        while n != 0 {
            if n % 3 == 2 { return false }
            n = n/3
        }
        
        return true
    }
}
