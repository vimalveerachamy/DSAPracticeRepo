//
//  AddDigit.swift
//  DSAlgorithmSolutions
//
//  Created by MobileLove on 3/31/18.
//  Copyright © 2018 MobileLove. All rights reserved.
//

import Foundation

/**
 Given a non-negative integer num, repeatedly add all its digits until the result has only one digit.
 
 For example:
 
 Given num = 38, the process is like: 3 + 8 = 11, 1 + 1 = 2. Since 2 has only one digit, return it.
 
 Follow up:
 Could you do it without any loop/recursion in O(1) runtime?
 
 **/

func addDigits(_ num: Int) -> Int {
    
    if (num % 10 == num) { return num }
    
    return addDigits(num % 10 + num / 10)
}
