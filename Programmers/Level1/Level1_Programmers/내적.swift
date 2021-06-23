// 프로그래머스 레벨1. 내적
//
// 모드 배열의 원소를 순서대로 곱해서 누적.
//
// 두 바퀴째 - 거의 동일하게 풀었음. 다른 풀이 보니까 zip 사용하면 좋은 대표적 문제 예시인듯. 공부 피료해!!

import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var sum = 0
    for i in 0..<a.count {
        sum += a[i] * b[i]
    }
    return sum
}

// 입출력 예시
print(solution([1,2,3,4], [-3,-1,0,2]))
print(solution([-1,0,1], [1,0,-1]))
