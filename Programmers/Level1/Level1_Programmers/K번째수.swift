// 프로그래머스 레벨1. K번째 수
//
// for문 안에서 한 행마다 temp 배열을 만들어 정렬, k번째 수를 result 배열에 추가해주었음

import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<commands.count {
        var temp = [Int]()
        
        for j in (commands[i][0]-1)...(commands[i][1]-1) {
            temp.append(array[j])
        }
        
        temp = temp.sorted()
        result.append(temp[commands[i][2]-1])
    }
    
    return result
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))
