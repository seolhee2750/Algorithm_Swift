// 프로그래머스 레벨2. 땅따먹기
//
// 두 바퀴째 - 풀이 방법이나 이런건 대충 알겠는데..
// 좀 코드답게? 풀어보려다가 또 시간초과;
// 이건 걍 복잡한거 쓰지말고 직관적으로 푸는게 답인가부다...

import Foundation

// 첫 번째 풀이 - 시간 초과
func solution1(_ land:[[Int]]) -> Int {
    var arr = land
    
    for i in 0..<arr.count-1 {
        var temp = arr[i]
        
        let maxNum = temp.max()! // 바로 이전 행의 최대 수
        let maxIndex = temp.firstIndex(of: maxNum)! // 바로 이전 행 최대 수의 위치

        temp = temp.sorted(by: >)
        let secondMax = temp[1] // 바로 이전 행의 두 번째 최대 수
        
        for j in 0..<4 {
            if maxIndex != j {
                arr[i+1][j] += maxNum
            }
            else {
                arr[i+1][j] += secondMax
            }
        }
    }
    return arr.last!.max()!
}

// 두 바퀴째 풀이 - 시간 초과;;
func solution2(_ land:[[Int]]) -> Int{
    var preRow = land[0]
    
    for i in 0..<land.count-1 {
        var nowRow = land[i+1]
        let temp = preRow
        for j in 0..<4 {
            preRow.remove(at: j)
            nowRow[j] += preRow.max()!
            preRow = temp
        }
        preRow = nowRow
    }

    return preRow.max()!
}

// 입출력 예시
print(solution1([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))

print(solution2([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
