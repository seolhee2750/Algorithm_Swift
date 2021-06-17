// 프로그래머스 레벨1. 예산
//
// 부서들을 정렬하여 작은 예산을 요구한 부서부터 예산을 줌
// for문 사용, 해당 부서가 요구한 예산이 남은 예산보다 작거나 같으면 count++, 남은 예산에서 해당 예산 빼기

import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let dep = d.sorted()
    var bud = budget
    var count = 0
    
    for i in 0..<dep.count {
        if dep[i] <= bud { count += 1; bud -= dep[i] }
        else { break }
    }
    
    return count
}

// 입출력 예시
print(solution([1,3,2,5,4], 9))
print(solution([2, 2, 3, 3], 10))
