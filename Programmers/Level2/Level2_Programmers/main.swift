// 참고
// https://lazyowl.tistory.com/entry/Swift-Programmers-%EB%95%85%EB%94%B0%EB%A8%B9%EA%B8%B0
//
// 행 마다 어차피 모두 4까지 밖에 없기 때문에
// 굳이 2중으로 반복을 하지 않아도 쉽게 풀이가 가능.
// 한 행마다 바로 이전 행에서 자신의 열 값을 제외한 나머지 열 값들 중 최댓값을 판별하여 더해주는 것을 반복

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var arr = land
    
    for i in 1 ..< arr.count {
        arr[i][0] += max(arr[i - 1][1], arr[i - 1][2], arr[i - 1][3])
        arr[i][1] += max(arr[i - 1][0], arr[i - 1][2], arr[i - 1][3])
        arr[i][2] += max(arr[i - 1][0], arr[i - 1][1], arr[i - 1][3])
        arr[i][3] += max(arr[i - 1][0], arr[i - 1][1], arr[i - 1][2])
    }
    return arr.last!.max()!
}

// 입출력 예시
print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))
