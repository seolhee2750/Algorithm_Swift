import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
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

// 입출력 예시
print(solution([5, 9, 7, 10], 5))
print(solution([2, 36, 1, 3], 1))
print(solution([3, 2, 6], 10))
