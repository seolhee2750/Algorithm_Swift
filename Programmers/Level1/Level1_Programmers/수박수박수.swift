// 프로그래머스 레벨1. 수박수박수박수
//
// 두 바퀴째 풀이 - 첫 번째 풀이랑 아예 똑같음
//
// 세 바퀴째 풀이 - 쉬운 문제여서 고민할 필요 없었지만, 한 번 새로운 방법으로 풀어보고 싶어서,, 해봤당
// 깔끔하고 괜찮은 풀이인듯!>

import Foundation

// 첫 번째 풀이
func solution1(_ n:Int) -> String {
    var result = ""
    
    // append 사용하여 짝수일 경우 수, 홀수일 경우 박을 추가
    for i in 0..<n {
        if i % 2 == 0 {
            result.append("수")
        }
        else {
            result.append("박")
        }
    }
    
    return result
}

// 세 바퀴째 풀이
func solution3(_ n:Int) -> String {
    return n%2==0 ? String(repeating:"수박", count:(n/2)) : String(repeating:"수박", count:(n/2))+"수"
}

// 입출력 예시
print(solution1(3))
print(solution1(4))

print(solution3(3))
print(solution3(4))
