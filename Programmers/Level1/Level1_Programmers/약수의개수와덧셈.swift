// 프로그래머스 레벨1. 약수의 개수와 덧셈

import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in left...right {
        var count = 0
        for j in 1...i {
            if i % j == 0 { count += 1 }
        }
        count % 2 == 0 ? (result += i) : (result -= i)
    }
    return result
}

// 입출력 예시
print(solution(13, 17))
print(solution(24, 27))
