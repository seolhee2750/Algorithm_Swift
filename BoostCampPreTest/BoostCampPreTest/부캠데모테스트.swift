// 1차 데모 테스트

import Foundation

func solution(_ v: [[Int]]) -> [Int]
{
    var x = [Int]()
    var y = [Int]()
    
    for i in 0..<v.count {
        x.append(v[i][0])
        y.append(v[i][1])
    }
    
    x.firstIndex(of: x.max()!)! == x.lastIndex(of: x.max()!)! ? (x = [x.max()!]) : (x = [x.min()!])
    y.firstIndex(of: y.max()!)! == y.lastIndex(of: y.max()!)! ? (y = [y.max()!]) : (y = [y.min()!])
    
    return [x[0], y[0]]
}

// 입출력 예시
print(solution([[1, 4], [3, 4], [3, 10]]))
print(solution([[1, 1], [2, 2], [1, 2]]))
