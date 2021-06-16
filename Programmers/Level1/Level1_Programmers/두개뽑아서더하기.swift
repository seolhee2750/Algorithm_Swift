// 프로그래머스 레벨1. 두 개 뽑아서 더하기

import Foundation

func solution(_ numbers:[Int]) -> [Int] {
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

// 입출력 예시
print(solution([2,1,3,4,1]))
print(solution([5,0,2,7]))
