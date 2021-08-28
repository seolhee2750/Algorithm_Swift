// DP를 이용한 LIS 기본 형태
//
// 주어진 배열의 요소별로, 해당 요소의 위치에서 만들 수 있는
// 최장 증가 수열의 개수를 확인하기 위하여 2중 for문을 이용한다.

import Foundation

let permu = [1, 3, 2, 5, 4, 6]
var count = [Int]()
var max = 1

for i in 0..<permu.count {
    count.append(1)
    
    for j in 0..<count.count {
        if permu[j] < permu[i] && count[i] <= count[j] { count[i] = count[j]+1 }
    }
    
    if max < count[i] { max = count[i] }
}

print(max)
