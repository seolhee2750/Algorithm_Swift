import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    
    // 1부터 주어진 수 n까지 차례로 나눠보며 나머지가 0이 될 때 해당 수를 더해줌
    for i in 1..<n+1 {
        if n % i == 0 {
            sum += i
        }
    }
    
    return sum
}

// 입출력 예시
print(solution(12))
print(solution(5))



