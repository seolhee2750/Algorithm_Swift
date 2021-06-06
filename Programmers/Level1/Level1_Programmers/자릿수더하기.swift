import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    answer = String(n).map{Int(String($0))!}.reduce(0, +)
    // String으로 캐스팅 한 후, String 값을 모두 Int로 캐스팅, 배열의 모든 값을 더해주었음

    print(answer)
    return answer
}

// 입출력 예시
solution(123)
solution(987)
