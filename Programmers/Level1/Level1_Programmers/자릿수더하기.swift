// 프로그래머스 레벨1. 자릿수 더하기
//
// 두 바퀴 째 - 첫 번째 풀이랑 로직은 같지만 훨씬 깔끔해져따!

import Foundation

func solution1(_ n:Int) -> Int
{
    var answer:Int = 0
    answer = String(n).map{Int(String($0))!}.reduce(0, +)
    // String으로 캐스팅 한 후, String 값을 모두 Int로 캐스팅, 배열의 모든 값을 더해주었음

    return answer
}

// 두 바퀴 째 풀이
func solution2(_ n:Int) -> Int {
    return String(n).map{ Int(String($0))! }.reduce(0, +)
}

// 입출력 예시
print(solution1(123))
print(solution1(987))

print(solution2(123))
print(solution2(987))
