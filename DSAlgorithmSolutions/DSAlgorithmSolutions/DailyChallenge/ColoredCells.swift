//
//  ColoredCells.swift
//  DSAlgorithmSolutions
//
//  Created by Vimal Veerachamy on 3/5/25.
//  Copyright © 2025 Veerachamy, Vimal. All rights reserved.
//

/**
 
 2579. Count Total Number of Colored Cells

 There exists an infinitely large two-dimensional grid of uncolored unit cells. You are given a positive integer n, indicating that you must do the following routine for n minutes:

 At the first minute, color any arbitrary unit cell blue.
 Every minute thereafter, color blue every uncolored cell that touches a blue cell.
 Below is a pictorial representation of the state of the grid after minutes 1, 2, and 3.


 Return the number of colored cells at the end of n minutes.
 
 */

func coloredCells(_ n: Int) -> Int {
     n*n + (n-1)*(n-1)
}

