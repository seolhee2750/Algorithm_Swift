import Foundation

func solution(_ land:[[Int]]) -> Int {
    var arr = land
    
    for i in 0..<arr.count-1 {
        let temp = arr[i]
        
        let maxNum = temp.max()! // 바로 이전 행의 최대 수
        let maxIndex = temp.firstIndex(of: maxNum)! // 바로 이전 행 최대 수의 위치

        temp.sorted(by: >)
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

print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
