//
//  ClosestPrimes.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/7/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//

/**
 
 2523. Closest Prime Numbers in Range

 Given two positive integers left and right, find the two integers num1 and num2 such that:

 left <= num1 < num2 <= right .
 Both num1 and num2 are prime numbers.
 num2 - num1 is the minimum amongst all other pairs satisfying the above conditions.
 Return the positive integer array ans = [num1, num2]. If there are multiple pairs satisfying these conditions, return the one with the smallest num1 value. If no such numbers exist, return [-1, -1].

  

 Example 1:

 Input: left = 10, right = 19
 Output: [11,13]
 Explanation: The prime numbers between 10 and 19 are 11, 13, 17, and 19.
 The closest gap between any pair is 2, which can be achieved by [11,13] or [17,19].
 Since 11 is smaller than 17, we return the first pair.
 Example 2:

 Input: left = 4, right = 6
 Output: [-1,-1]
 Explanation: There exists only one prime number in the given range, so the conditions cannot be satisfied.
  

 Constraints:

 1 <= left <= right <= 106
 
 */

import Foundation

func closestPrimes(_ left: Int, _ right: Int) -> [Int] {
    
    guard right > 1 else { return [-1, -1] }
    
    var primes = Array(repeating: true, count: right + 1)
    primes[0] = false
    primes[1] = false
    
    for i in 2...Int(sqrt(Double(right))) where primes[i] {
        for j in stride(from: i * i, through: right, by: i) {
            primes[j] = false
        }
    }
    
    var result = [-1, -1], prev = -1
    for i in max(2, left)...right where primes[i] {
        if prev != -1, result[0] == -1 || i - prev < result[1] - result[0] {
            result = [prev, i]
        }
        prev = i
    }
    
    return result
}
