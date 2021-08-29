// 이분 탐색을 이용한 LIS 기본 형태
//
// 주어진 수열을 차례대로 lis에 적절한 위치를 찾아 넣어주는데,
// 그 적절한 위치를 찾는데에 이분탐색을 사용한다.

import Foundation

let permu = [1, 3, 2, 5, 4, 6]
var lis = [Int]()

// 이분탐색으로 lis 배열의 적절한 인덱스를 찾는 함수
func BinarySearch(_ start: Int, _ end: Int, _ value: Int) -> Int {
    var s = start // lis의 시작 인덱스
    var e = end // lis의 맨 끝 인덱스
    var m = 0 // s와 m의 중간 인덱스
    
    while s < e {
        m = (s + e) / 2
        if value <= lis[m] { e = m }
        else { s = m + 1 }
    }
    
    return s
}

for i in 0..<permu.count {
    if lis.isEmpty { lis.append(permu[i]) }
    else if lis.last! < permu[i] { lis.append(permu[i]) }
    else { lis[BinarySearch(0, lis.count-1, permu[i])] = permu[i] }
}

print(lis.count)
