// 프로그래머스 레벨1. 예산

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
