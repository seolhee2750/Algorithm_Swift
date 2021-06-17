// 프로그래머스 레벨1. 소수 만들기
//
// 3중 for문으로 숫자 3개를 뽑아 더하는 모든 경우의 수를 구하여 배열에 추가해주었음.
// 배열의 모든 요소를 2부터 해당 요소의 -1 값 까지 나눠보며 소수인지 판별, 소수 일 때는 count++ 해주었음.

import Foundation

func solution(_ nums:[Int]) -> Int {
    var sum = [Int]()
    var count = 0

    for i in 0..<nums.count-2 {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                sum.append(nums[i] + nums[j] + nums[k])
            }
        }
    }

    for i in 0..<sum.count {
        for j in 2..<sum[i] {
            if sum[i] % j == 0 {
                break
            }
            else if j == sum[i]-1 && sum[i] % j != 0 {
                count += 1
            }
        }
    }

    return count
}

// 입출력 예시
print(solution([1, 2, 3, 4]))
print(solution([1, 2, 7, 6, 4]))
