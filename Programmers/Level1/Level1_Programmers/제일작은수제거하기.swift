// 프로그래머스 레벨1. 제일 작은 수 제거하기
//
// 두 바퀴째 - 시간 초과..!!ㅜ 첫 번째 풀이처럼 filter 쓰는 방법이 더 깔끔한 듯
//
// 세 바퀴째 - 겁나 깔끔하게 잘 풀었다고 생각했는데 왜 시간초과지? 어떤 부분이 시간 잡아먹는건지 궁금하네;;;;

import Foundation

// 첫 번째 풀이
func solution1(_ arr:[Int]) -> [Int] {
    let min = arr.min() // min() 사용, 배열의 제일 작은 수 찾기
    let notMinArr = arr.filter{$0 != min} // fillter 사용, 배열의 전체 원소 중 min이 아닌 원소만 찾아 새로운 배열 생성
    
    // 새로 생성한 배열이 비어있으면 [-1] 리턴, 아니면 생성된 배열 notMinArr 리턴
    return notMinArr.isEmpty ? [-1] : notMinArr
}

// 두 바퀴째 풀이
func solution2(_ arr:[Int]) -> [Int] {
    var result = arr
    var minIndex = 0
    
    for i in 0..<arr.count {
        if arr[i] == arr.min() {
            minIndex = i
            break
        }
    }
    
    result.remove(at: minIndex)
    return result.count == 0 ? [-1] : result
}

// 세 바퀴째 풀이
func solution3(_ arr:[Int]) -> [Int] {
    var res = arr
    res.removeAll(where: {$0 == arr.min()})
    return res.isEmpty ? [-1] : res
}

// 입출력 예시
print(solution1([4, 3, 2, 1]))
print(solution1([10]))

print(solution2([4, 3, 2, 1]))
print(solution2([10]))

print(solution3([4, 3, 2, 1]))
print(solution3([10]))
