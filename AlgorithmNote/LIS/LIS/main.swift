// DP를 이용한 LIS 기본 형태

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
