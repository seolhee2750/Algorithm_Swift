// 프로그래머스 레벨1. K번째 수
//
// for문 안에서 한 행마다 temp 배열을 만들어 정렬, k번째 수를 result 배열에 추가해주었음
//
// 두 바퀴째 - 로직은 같으나, 필요없는 코드 덜어내고 간결히 작성하였음.

import Foundation

// 첫 번째 풀이
func solution1(_ array:[Int], _ commands:[[Int]]) -> [Int] {
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

// 두 바퀴째 풀이
func solution2(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var res = [Int]()
    
    for i in 0..<commands.count {
        var tmp = [Int]()
        for j in commands[i][0]-1...commands[i][1]-1 { tmp.append(array[j]) }
        res.append(tmp.sorted()[commands[i][2]-1])
    }
    
    return res
}

// 입출력 예시
print(solution1([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))

print(solution2([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]]))

