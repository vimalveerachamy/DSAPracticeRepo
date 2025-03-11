//
//  CountOfSubstrings.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/10/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//


/**
 
 3306. Count of Substrings Containing Every Vowel and K Consonants II

 You are given a string word and a non-negative integer k.

 Return the total number of substrings of word that contain every vowel ('a', 'e', 'i', 'o', and 'u') at least once and exactly k consonants.
 
 
 */

func countOfSubstrings(_ word: String, _ k: Int, _ recurse:Bool = true) -> Int {
    let vowelIndex = Dictionary(uniqueKeysWithValues: zip("aeiou", 1...))
    let indexForChar = word.map{vowelIndex[$0] ?? 0}
    var counters = [0,0,0,0,0,0]
    let minVals  = [k,1,1,1,1,1]
    var result = 0
    var l = 0
    for r in indexForChar.indices {
        counters[indexForChar[r]] += 1
        while zip(counters, minVals).allSatisfy(>=) {
            result += indexForChar.count - r
            counters[indexForChar[l]] -= 1
            l += 1
        }
    }
    return result - (recurse ? countOfSubstrings(word, k+1, false) : 0)
}
