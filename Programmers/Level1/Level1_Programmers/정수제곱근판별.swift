// 프로그래머스 레벨1. 정수 제곱근 판별
//
// 두 바퀴째 - 첫 번째 풀이랑 완전 같음. return 문에 한 줄로 끝낼 수도 있지만 가독성 생각하면 지금이 좋을듯
//
// 세 바퀴째 - 똑같

import Foundation

func solution1(_ n:Int64) -> Int64 {
    let x = Int64(sqrt(Double(n))) // sqrt 사용, 입력된 수 n의 제곱근 구하기 (sqrt는 Double형태만 취급)
    
    // 위에서 구한 n의 제곱근을 제곱했을 때 n이면 (x + 1)의 제곱 리턴, 아니면 -1
    return x * x == n ? (x + 1) * (x + 1) : -1
}

// 입출력 예시
print(solution1(121))
print(solution1(3))
