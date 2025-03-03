//
//  PivotArray.swift
//
//
//  Created by Vimal Veerachamy on 3/3/25.
//

class Solution {
    
    func pivotArray(_ nums: [Int], _ pivot: Int) -> [Int] {
        var leftNums = [Int]()
        var equalNums = [Int]()
        var rightNums = [Int]()
        
        for num in nums {
            if num == pivot { equalNums.append(num) }
            else if num < pivot { leftNums.append(num) }
            else { rightNums.append(num) }
        }
        
        return leftNums + equalNums + rightNums
    }
}
