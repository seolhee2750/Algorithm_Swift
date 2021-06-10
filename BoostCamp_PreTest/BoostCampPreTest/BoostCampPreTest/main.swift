// 배열의 0번째부터 해당 수가 배열에 또 존재하는지 판별,
// 존재한다면 개수를 확인하고 배열에서 해당 수를 모두 삭제.
// 그리고 result 배열에 중복된 횟수를 추가!

import Foundation

func solution(_ arr: [Int]) -> [Int]{
    var result = [Int]()
    var cpArr = arr
    
    for i in 0..<arr.count {
        if cpArr.filter({$0 == arr[i]}).count > 1 {
            result.append(cpArr.filter({$0 == arr[i]}).count)
            cpArr = cpArr.filter({$0 != arr[i]})
        }
    }
    
    return result.isEmpty ? [-1] : result
}

// 입출력 예시
print(solution([1, 2, 3, 3, 3, 3, 4, 4]))
print(solution([3, 2, 4, 4, 2, 5, 2, 5, 5]))
print(solution([3, 4, 7, 9 ,1]))

