// 프로그래머스 레벨1. 약수의 합
//
// 두 바퀴째 - 처음에 효율성을 높이고자 먼저 1과 n을 더해주고,
// for문을 2부터 n-1까지 돌리려고 했는데,
// 문제를 잘 읽어보니 n이 0일수도 있다고 주어졌었다,,
// 따라서 for문에서는 무조건 1부터 n+1로 범위를 만들어주어야 함.
//
// 이렇게 문제 제대로 안읽으면 잘 풀어놓고 제출했을 때 틀릴 수도 있으니 문제 꼭 잘 읽자,,,**
//
// 세 바퀴째 - 처음으로 set 사용해서 문제 풀어봤당
// 나누는 횟수를 줄이고, 중복을 자동으로 제거하기 위해 이렇게 풀었는데
// 첫 번째 풀이가 보기에는 훨씬 쉬워보인다.ㅎ

import Foundation

func solution1(_ n:Int) -> Int {
    var sum = 0
    
    // 1부터 주어진 수 n까지 차례로 나눠보며 나머지가 0이 될 때 해당 수를 더해줌
    for i in 1..<n+1 {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum
}

// 세 바퀴째 풀이
func solution3(_ n:Int) -> Int {
    var res = Set<Int>()
    if n == 0 { return 0 }
    else if n == 1 { return 1 }
    else { for i in 1..<(n/2) { if n%i == 0 { res.insert(i); res.insert(n/i) } }}
    return res.reduce(0, +)
}

// 입출력 예시
print(solution1(12))
print(solution1(5))

print(solution3(12))
print(solution3(5))



