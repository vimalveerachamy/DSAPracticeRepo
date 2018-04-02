//
//  ReverseWords.swift
//  DSAlgorithmSolutions
//
//  Created by MobileLove on 4/2/18.
//  Copyright © 2018 MobileLove. All rights reserved.
//

import Foundation

/**
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 
 **/

func reverseWords(_ s: String) -> String {
    
    let strings = s.components(separatedBy: " ")
    
    var reversedWords = [String]()
    
    for item in strings {
        reversedWords.append(String(item.reversed()))
    }
    
    return reversedWords.joined(separator: " ")
}
