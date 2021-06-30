// 프로그래머스 레벨2. 타겟 넘버
//
// 참고
// https://fomaios.tistory.com/entry/%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-%ED%83%80%EA%B2%9F-%EB%84%98%EB%B2%84-Swift
//

import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var count = 0
    
    func dfs(_ depth: Int, _ sum: Int) {
        if depth == numbers.count {
            if sum == target { count += 1 }
            return
        }
        
        dfs(depth + 1, sum + numbers[depth])
        dfs(depth + 1, sum - numbers[depth])
    }
    
    dfs(0, 0)
    return count
}

// 입출력 예시
print(solution([1, 1, 1, 1, 1], 3))
