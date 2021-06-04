//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/03.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var array1 = [Int]()
    var array2 = [[Int]]()
    var sum = 0
    
    for i in 0 ..< arr1.count {
        for j in 0 ..< arr1[i].count {
            sum = arr1[i][j] + arr2[i][j]
            array1.append(sum)
        }
        array2.append(array1)
        array1.removeAll()
    }
    
    print(array2)
    return array2
}

solution([[1, 2], [2, 3]], [[3, 4], [5, 6]])
solution([[1], [2]], [[3], [4]])
