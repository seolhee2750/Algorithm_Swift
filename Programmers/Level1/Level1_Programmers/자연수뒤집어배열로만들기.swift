import Foundation

func solution(_ n:Int64) -> [Int] {
    return String(n).map{Int(String($0))!}.reversed()
    // String으로 값을 캐스팅하고, map 함수 사용하여 전체 String 값을 Int로 바꿔준 후 reversed
}

// 입출력 예시
print(solution(12345))

