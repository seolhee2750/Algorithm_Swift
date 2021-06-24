// 프로그래머스 레벨2. 최솟값 만들기
//
// 두 바퀴째 - zip 사용법을 배운걸 딱 써먹을 때라고 생각해서,, 한 번 해봤는데 대박이당!

import Foundation

func solution1(_ A:[Int], _ B:[Int]) -> Int {
    var result = 0
    let arrA = A.sorted(by: <) // 오름차순 정렬
    let arrB = B.sorted(by: >) // 내림차순 정렬
    
    for i in 0..<A.count {
        result += arrA[i] * arrB[i]
    }

    return result
}

func solution2(_ A:[Int], _ B:[Int]) -> Int {
    return zip(A.sorted(), B.sorted(by: >)).map(*).reduce(0, +)
}

// 입출력 예시
print(solution1([1, 4, 2], [5, 4, 4]))
print(solution1([1, 2], [3, 4]))

// 입출력 예시
print(solution2([1, 4, 2], [5, 4, 4]))
print(solution2([1, 2], [3, 4]))
