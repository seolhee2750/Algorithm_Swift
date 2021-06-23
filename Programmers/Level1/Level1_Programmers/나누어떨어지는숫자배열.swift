// 프로그래머스 레벨1. 나누어 떨어지는 숫자 배열
//
// 두 바퀴째 - 첫 번째 풀이와 거의 같지만 디테일한 부분에서 더 깔끔해졌음!
//
// 세 바퀴째 - 미쳤다. 완전 깔끔!!

import Foundation

// 첫 번째 풀이
func solution1(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    
    // 배열 원소들을 하나씩 나눠보며 나눠 떨어지는 수들을 result 배열에 추가
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 {
            result.append(arr[i])
        }
    }
    
    // 배열이 비었다면 [-1] 리턴, 아니면 오름차순으로 정렬하여 리턴
    return result.isEmpty ? [-1] : result.sorted(by : <)
}

// 두 바퀴째 풀이
func solution2(_ arr:[Int], _ divisor:Int) -> [Int] {
    var result = [Int]()
    for i in 0..<arr.count {
        if arr[i] % divisor == 0 { result.append(arr[i]) }
    }
    return result.isEmpty ? [-1] : result.sorted()
}

// 세 바퀴째 풀이
func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var res = Array(arr.filter({$0%divisor == 0}))
    return res.isEmpty ? [-1] : res.sorted()
}

// 입출력 예시
print(solution1([5, 9, 7, 10], 5))
print(solution1([2, 36, 1, 3], 1))
print(solution1([3, 2, 6], 10))

print(solution2([5, 9, 7, 10], 5))
print(solution2([2, 36, 1, 3], 1))
print(solution2([3, 2, 6], 10))
