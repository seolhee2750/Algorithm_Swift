// 프로그래머스 레벨1. 자연수 뒤집어 배열로 만들기
//
// 두 바퀴째 - 첫 번째와 똑같이 풀었음! 이게 베스트인듯

import Foundation

func solution(_ n:Int64) -> [Int] {
    return String(n).map{Int(String($0))!}.reversed()
    // String으로 값을 캐스팅하고, map 함수 사용하여 전체 String 값을 Int로 바꿔준 후 reversed
}

// 입출력 예시
print(solution(12345))

