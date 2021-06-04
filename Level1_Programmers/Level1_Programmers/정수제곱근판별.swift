import Foundation

func solution(_ n:Int64) -> Int64 {
    let x = Int64(sqrt(Double(n))) // sqrt 사용, 입력된 수 n의 제곱근 구하기 (sqrt는 Double형태만 취급)
    
    // 위에서 구한 n의 제곱근을 제곱했을 때 n이면 (x + 1)의 제곱 리턴, 아니면 -1
    print(x * x == n ? (x + 1) * (x + 1) : -1)
    return x * x == n ? (x + 1) * (x + 1) : -1
}

// 입출력 예시
solution(121)
solution(3)
