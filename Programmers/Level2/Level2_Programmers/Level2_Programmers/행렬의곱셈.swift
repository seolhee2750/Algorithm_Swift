import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    for i in 0..<arr1.count {
        var tempArr = [Int]() // 한 행을 만들어 넣을 배열 생성
        for j in 0 ..< arr2[0].count {
            var sum = 0 // 값을 더해줄 변수 생성
            for k in 0 ..< arr1[0].count {
                sum += arr1[i][k] * arr2[k][j] // 메인 계산식
            }
            tempArr.append(sum)
        }
        result.append(tempArr)
    }
    
    return result
}

// 입출력 예시
print(solution([[1, 4], [3, 2], [4, 1]], [[3, 3], [3, 3]]))
print(solution([[2, 3, 2], [4, 2, 4], [3, 1, 4]], [[5, 4, 3], [2, 4, 1], [3, 1, 1]]))
