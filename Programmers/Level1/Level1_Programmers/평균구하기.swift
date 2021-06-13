// 프로그래머스 레벨1. 평균 구하기
//
// 두 바퀴째 - 리턴 문 한 줄로 완성,, 이 정도는 가독성 상관 없이 한 줄로도 충분 한 듯

import Foundation

// 첫번 째 풀이
func solution1(_ arr:[Int]) -> Double {
    let result = Double(arr.reduce(0, +)) / Double(arr.count) // reduce(0, +) 사용, 배열의 모든 원소 더해준 후 배열 길이로 나눔

    return result
}

// 두 바퀴째 풀이
func solution2(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, +))/Double(arr.count)
}

// 입출력 예시
print(solution1([1, 2, 3, 4]))
print(solution2([5, 5]))

print(solution2([1, 2, 3, 4]))
print(solution2([5, 5]))

