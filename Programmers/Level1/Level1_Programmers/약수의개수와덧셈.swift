// 프로그래머스 레벨1. 약수의 개수와 덧셈
//
// 두 바퀴째 - 좀 더 간단히 할 수도 있었지만, 약수를 구하는 부분만 따로 함수를 생성해주면
// 가독성 측면에서 더 좋지 않을까 하여 다르게 풀어보았음.

import Foundation

// 첫 번째 풀이
func solution1(_ left:Int, _ right:Int) -> Int {
    var result = 0
    for i in left...right {
        var count = 0
        for j in 1...i {
            if i % j == 0 { count += 1 }
        }
        count % 2 == 0 ? (result += i) : (result -= i)
    }
    return result
}

// 두 바퀴째 풀이
func solution2(_ left:Int, _ right:Int) -> Int {
    func yacsoo(_ num:Int) -> Bool {
        var res = Set<Int>()
        for i in 1...num { if num%i==0 { res.insert(i); res.insert(num/i) } }
        return res.count % 2 == 0
    }
    
    var sum = 0
    for i in left...right { yacsoo(i) ? (sum += i) : (sum -= i) }
    
    return sum
}

// 입출력 예시
print(solution(13, 17))
print(solution(24, 27))

print(solution2(13, 17))
print(solution2(24, 27))
