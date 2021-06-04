//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/03.
//

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr = [Int64]()
    var k = x
    var num = 0
    
    while num < n {
        arr.append(Int64(k))
        k += x
        num += 1
    }
    
    print(arr)

    return arr
}

// 입출력 예시
solution(2, 5)
solution(4, 3)
solution(-4, 2)
