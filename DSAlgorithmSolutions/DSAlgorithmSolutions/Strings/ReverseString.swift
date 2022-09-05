//
//  ReverseString.swift
//  DSAlgorithmSolutions
//
//  Created by MobileLove on 3/30/18.
//  Copyright © 2018 MobileLove. All rights reserved.
//

import Foundation

/**
 
 Write a function that takes a string as input and returns the string reversed.
 
 Example:
 Given s = "hello", return "olleh".
 
**/

func reverseString(_ s: String) -> String {
    
    let characters = Array(s)
    
    var reveresedChars = [Character]()
    
    for (index, _) in characters.enumerated() {
        
        let reverseIndexPosition = (characters.count - 1) - index
        
        if(reverseIndexPosition >= 0){
            reveresedChars.insert(characters[reverseIndexPosition], at: index)
        }
    }
    
    return String(reveresedChars)
}
