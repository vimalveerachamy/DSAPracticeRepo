//
//  ReverseInteger.swift
//  DSAlgorithmSolutions
//
//

import Foundation
/**

 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 Example 2:
 
 Input: -123
 Output: -321
 Example 3:
 
 Input: 120
 Output: 21
 
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 
 
 **/

class ReverseInteger {
    
    func reverse(_ x: Int) -> Int {
        var remainderAsValues:[Int] = []
        var quotient = abs(x)
        var remainder = 0
        var sum = 0
        
        if(x <= Int32.max){
            while (quotient >= 10){
                remainder = quotient % 10
                remainderAsValues.append(remainder)
                quotient = quotient / 10
            }
            
            remainderAsValues.append(quotient)
            
            var count = remainderAsValues.count - 1
            var index = 0
            
            while (count >= 0) {
                sum = sum + (remainderAsValues[index] * Int(powf(10, Float(count))))
                count -= 1
                index += 1
            }
            
            if(sum > Int32.max){
                return 0
            }
            
            return (sum * x.signum())
            
        }else{
            return 0
        }
    }
}
