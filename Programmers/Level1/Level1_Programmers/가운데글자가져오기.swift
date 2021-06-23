// 프로그래머스 레벨1. 가운데 글자 가져오기
//
// 두 바퀴째 - 신기하게도 첫 번째랑 완전 똑같음;
//
// 세 바퀴째 - 더 효율적으로 풀어보고 싶어서 고민했는데, 배열 범위를 []안에서 ...로 표현하면 훨씬 깔끔하다!!! 대바구

import Foundation

// 첫 번째 풀이
func solution1(_ s:String) -> String {
    // 문자열을 배열로 바꾸고, 문자열 길이가 짝수일 때는 가운데 두 수, 홀수일 때는 가운데 하나의 수가 출력
    return s.count % 2 == 0 ? String(Array(s)[(s.count/2)-1]) + String(Array(s)[s.count/2]) : String(Array(s)[s.count/2])
}

// 세 바퀴째 풀이
func solution3(_ s:String) -> String {
    return s.count % 2 == 0 ? String(Array(s)[(s.count/2)-1...s.count/2]) : String(Array(s)[s.count/2])
}

// 입출력 예시
print(solution1("abcde"))
print(solution1("qwer"))

print(solution3("abcde"))
print(solution3("qwer"))
