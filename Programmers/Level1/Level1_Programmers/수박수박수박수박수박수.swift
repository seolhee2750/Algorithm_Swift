// 프로그래머스 레벨1. 수박수박수박수
//
// 두 바퀴째 풀이 - 신기할 정도로 첫 번쨰 풀이랑 아예 똑같음

import Foundation

func solution(_ n:Int) -> String {
    var result = ""
    
    // append 사용하여 짝수일 경우 수, 홀수일 경우 박을 추가
    for i in 0..<n {
        if i % 2 == 0 {
            result.append("수")
        }
        else {
            result.append("박")
        }
    }
    
    return result
}

// 입출력 예시
print(solution(3))
print(solution(4))
