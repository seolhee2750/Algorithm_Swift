// 프로그래머스 레벨1. 가운데 글자 가져오기
//
// 두 바퀴째 - 신기하게도 첫 번째랑 완전 똑같음;

import Foundation

func solution(_ s:String) -> String {
    // 문자열을 배열로 바꾸고, 문자열 길이가 짝수일 때는 가운데 두 수, 홀수일 때는 가운데 하나의 수가 출력
    return s.count % 2 == 0 ? String(Array(s)[(s.count/2)-1]) + String(Array(s)[s.count/2]) : String(Array(s)[s.count/2])
}

// 입출력 예시
print(solution("abcde"))
print(solution("qwer"))
