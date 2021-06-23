// 프로그래머스 레벨1. 로또의 최고 순위와 최저 순위
//
// 당첨 번호에 내 로또 번호가 몇 개 존재하는지 판단, 개수만큼 count++
// 내 로또 번호에 존재하는 0의 개수를 plusCount에 ++
// 최저 순위는 0이 있는 자리에 있는 번호들이 모두 틀렸을 때. 따라서 count만큼만 맞은 순위가 최저 순위가 됨.
// 최고 순위는 0이 있는 자리에 있는 번호들이 모두 맞았을 때. 따라서 원래 맞은 count에 plusCount까지 더해준 수가 최고 순위!
// 순위 출력은 7에서 맞은 개수를 빼주었음.
//
// 두 바퀴째 - 로직은 똑같고, 불필요한 라인 빼줘서 좀 더 간결해짐!

import Foundation

// 첫 번째 풀이
func solution1(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var count = 0
    var plusCount = 0
    var max = 0
    var min = 0
    
    for i in 0..<lottos.count {
        if win_nums.contains(lottos[i]) { count += 1 }
        else if lottos[i] == 0 { plusCount += 1 }
    }
    
    plusCount+count <= 1 ? (max = 6) : (max = 7 - (plusCount+count))
    count <= 1 ? (min = 6) : (min = 7 - count)
    
    return [max, min]
}

// 두 바퀴째 풀이
func solution2(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var winCount = 0
    var plusCount = 0
    
    for i in 0..<lottos.count {
        if win_nums.contains(lottos[i]) { winCount += 1 }
        else if lottos[i]==0 { plusCount += 1 }
    }
    
    let max = winCount+plusCount < 2 ? 6 : 7-(winCount+plusCount)
    let min = winCount < 2 ? 6 : 7-winCount

    return [max, min]
}

// 입출력 예시
print(solution1([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print(solution1([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))
print(solution1([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))

print(solution2([44, 1, 0, 0, 31, 25], [31, 10, 45, 1, 6, 19]))
print(solution2([0, 0, 0, 0, 0, 0], [38, 19, 20, 40, 15, 25]))
print(solution2([45, 4, 35, 20, 3, 9], [20, 9, 3, 45, 4, 35]))
