// 프로그래머스 레벨1. 문자열을 정수로 바꾸기
//
// 두 바퀴 째 - 첫 번재 풀이와 같음. -같이 부호 모양의 스트링도 정수로 인식할 수 있음,,

import Foundation

func solution(_ s:String) -> Int {
    return Int(s)! // Int로 형변환, 강체추출
}

// 입출력 예시
print(solution("1234"))
print(solution("-1234"))
