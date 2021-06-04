//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/03.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    let result = Double(arr.reduce(0, +)) / Double(arr.count)
    print(result)
    return result
}

// 입출력 예시
solution([1, 2, 3, 4])
solution([5, 5])

