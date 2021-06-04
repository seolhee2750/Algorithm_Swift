import Foundation

func solution(_ arr:[Int]) -> Double {
    let result = Double(arr.reduce(0, +)) / Double(arr.count) // reduce(0, +) 사용, 배열의 모든 원소 더해준 후 배열 길이로 나눔
    
    print(result)
    return result
}

// 입출력 예시
solution([1, 2, 3, 4])
solution([5, 5])

