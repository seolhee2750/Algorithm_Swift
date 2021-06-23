// 프로그래머스 레벨1. 문자열 내림차순으로 배치하기
//
// 두 바퀴째 - 첫 번째와 아주 똑같음.
// 여기서도 '정수 내림차순으로 배치하기'문제에서 공부했던 것처럼
// sorted된 Character배열을 다시 String으로 변환해주었음.
//
// 세 바퀴째 - 똑같

import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}

// 입출력 예시
print(solution("Zbcdefg"))
