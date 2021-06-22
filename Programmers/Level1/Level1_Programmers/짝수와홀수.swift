// 프로그래머스 레벨1. 짝수와 홀수
//
// 두 바퀴째 - 첫 번째 풀이랑 완전 똑같음
//
// 세 바퀴째 - 똑같

import Foundation

func solution(_ num:Int) -> String {
    // 2로 나눈 나머지가 0인지 아닌지에 따라 짝/홀 판별
    return num % 2 == 0 ? "Even" : "Odd"
}

// 입출력 예시
print(solution(3))
print(solution(4))
