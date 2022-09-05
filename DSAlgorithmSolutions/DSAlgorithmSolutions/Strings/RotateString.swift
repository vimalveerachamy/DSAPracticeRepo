//
//  RotateString.swift
//  DSAlgorithmSolutions
//
//  Created by MobileLove on 3/30/18.
//  Copyright © 2018 MobileLove. All rights reserved.
//

import Foundation

func rotateString(_ A: String, _ B: String) -> Bool {
    
    //1. Requirement - Support only Max A and Max B length are 100 and both string length should be equal
    if((A.count > 100 || B.count > 100) && (A.count != B.count)){
        return false
    }
    
    //2. Check if A and B strings are equal return true
    if(A == B){
        return true
    }
    
    let rotateCharacters:[Character] = Array(A)
    
    //Get hold the temp character array
    var temprotateCharacters = rotateCharacters
    
    var startIndex = 0
    
    while (startIndex < rotateCharacters.count - 1) {
        
        temprotateCharacters.insert(temprotateCharacters.first!, at: rotateCharacters.count)
        temprotateCharacters.removeFirst()
        
        startIndex += 1
        
        if(String(temprotateCharacters) == B){
            return true
        }
    }
    
    return false
}

