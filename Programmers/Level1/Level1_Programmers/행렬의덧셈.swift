// 프로그래머스 레벨1. 행렬의 덧셈
//
// 두 바퀴째 - 미쳐따 훨씬 깔끔해졌다
//
// 세 바퀴째 - 두 바퀴째 풀이와 같음!

import Foundation

// 첫 번째 풀이
func solution1(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var array1 = [Int]() // 1차원 배열 생성 (죄종적으로 만들 2중 배열 안의 행을 만들기 위한 배열)
    var array2 = [[Int]]() // 2차원 배열 생성 (최종적으로 리턴 할 배열)
    var sum = 0 // 원소들을 더한 값 저장할 변수
    
    // 어차피 입력받는 배열의 크기는 같으므로 arr1을 기준으로, 2중 for문 사용하여 같은 자리의 원소들을 더해 행을 하나씩 만들어 더해주는 방식
    for i in 0 ..< arr1.count {
        for j in 0 ..< arr1[i].count {
            sum = arr1[i][j] + arr2[i][j]
            array1.append(sum)
        }
        array2.append(array1)
        array1.removeAll()
    }
    
    return array2
}

// 두 바퀴째 풀이
func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result = arr1
    
    for i in 0..<arr1.count {
        for j in 0..<arr1[1].count {
            result[i][j] += arr2[i][j]
        }
    }
    return result
}

// 입출력 예시
print(solution1([[1, 2], [2, 3]], [[3, 4], [5, 6]]))
print(solution1([[1], [2]], [[3], [4]]))

print(solution2([[1, 2], [2, 3]], [[3, 4], [5, 6]]))
print(solution2([[1], [2]], [[3], [4]]))
