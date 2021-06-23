// 프로그래머스 레벨1. 두 개 뽑아서 더하기
//
// 두 바퀴째 - Set 사용하여 훨씬 간단하게 문제 풀어따.

import Foundation

// 첫 번째 풀이
func solution1(_ numbers:[Int]) -> [Int] {
    var result = [Int]()
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            if !result.contains(numbers[i] + numbers[j]) {
                result.append(numbers[i] + numbers[j])
            }
        }
    }
    return result.sorted()
}

// 두 바퀴째 풀이
func solution2(_ numbers:[Int]) -> [Int] {
    var res = Set<Int>()
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count { res.insert(numbers[i]+numbers[j]) }
    }
    return res.sorted()
}

// 입출력 예시
print(solution1([2,1,3,4,1]))
print(solution1([5,0,2,7]))

print(solution2([2,1,3,4,1]))
print(solution2([5,0,2,7]))
