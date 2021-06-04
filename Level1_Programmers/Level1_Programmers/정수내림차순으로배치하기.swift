import Foundation

func solution(_ n:Int64) -> Int64 {
    // sorted(by :) 사용, Int64로 입력된 n을 String으로 변환하여 정렬 후 다시 Int64로 변환
    print(Int64(String(String(n).sorted(by: >))) ?? 0)
    return Int64(String(String(n).sorted(by: >))) ?? 0
}

// 입출력 예시
solution(118372)
