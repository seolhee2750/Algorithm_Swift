//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/04.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min()
    let notMinArr = arr.filter{$0 != min}
    
    print(notMinArr.isEmpty ? [-1] : notMinArr)
    return notMinArr.isEmpty ? [-1] : notMinArr
}

// 입출력 예시
solution([4, 3, 2, 1])
solution([10])
