// 프로그래머스 레벨1. 음양 더하기
//
// signs에 true가 들어있으면 더하고 false면 빼주었음.

import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum = 0
    
    for i in 0..<absolutes.count {
        signs[i] ? (sum += absolutes[i]) : (sum -= absolutes[i])
    }
    
    return sum
}

// 입출력 예시
print(solution([4,7,12], [true,false,true]))
print(solution([1,2,3], [false,false,true]))
