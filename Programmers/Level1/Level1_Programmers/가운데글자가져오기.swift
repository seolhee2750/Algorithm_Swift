//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/06.
//

import Foundation

func solution(_ s:String) -> String {
    // 문자열을 배열로 바꾸고, 문자열 길이가 짝수일 때는 가운데 두 수, 홀수일 때는 가운데 하나의 수가 출력
    return s.count % 2 == 0 ? String(Array(s)[(s.count/2)-1]) + String(Array(s)[s.count/2]) : String(Array(s)[s.count/2])
}

// 입출력 예시
print(solution("abcde"))
print(solution("qwer"))
