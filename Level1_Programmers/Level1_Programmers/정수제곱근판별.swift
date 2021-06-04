//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/04.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let x = Int64(sqrt(Double(n)))
    print(x * x == n ? (x + 1) * (x + 1) : -1)
    return x * x == n ? (x + 1) * (x + 1) : -1
}

// 입출력 예시
solution(121)
solution(3)
