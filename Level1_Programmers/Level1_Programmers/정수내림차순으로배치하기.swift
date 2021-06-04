//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/04.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    print(Int64(String(String(n).sorted(by: >))) ?? 0)
    return Int64(String(String(n).sorted(by: >))) ?? 0
}

// 입출력 예시
solution(118372)
