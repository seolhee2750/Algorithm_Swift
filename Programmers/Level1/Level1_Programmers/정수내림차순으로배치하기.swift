// 프로그래머스 레벨1. 정수 내림차순으로 배치하기
//
// 두 바퀴 째 - 숫자를 문자열로 변환하고, 그걸 정렬하여 나온 배열을 joined 하려고 했는데 왜 안되는지ㅡㅜ,,
// 아무리 해도 모르겠어서 첫 번째 풀이로 간다......

import Foundation

func solution(_ n:Int64) -> Int64 {
    // sorted(by :) 사용, n을 String으로 변환, 그 값을 정렬하여 나온 배열을 다시 문자열로 변환한 후 숫자로 변환.
    return Int64(String(String(n).sorted(by: >)))!
}

// 입출력 예시
print(solution(118372))
