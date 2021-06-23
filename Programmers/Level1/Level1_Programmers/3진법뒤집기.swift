// 프로그래머스 레벨1. 3진법 뒤집기
//
// 진법 변환 참고
// https://m.blog.naver.com/PostView.naver?isHttpsRedirect=true&blogId=yoonsea&logNo=221004904163
// 10진수를 2진법, 3진법, 등등 다른 진법의 수로 변환할 때는 String으로, 다시 10진수로 바꿀 때는 Int 사용.
// Ex)
// let n = 5; let m = String(n, radix: 2) --> 10진수 5를 2진수로 변환
// Int(m, radix: 2)! --> 2진수 m을 10진수로 변환
//
// 두 바퀴째 - 같은 로직이지만 한 줄로 더 간결히 표현!

import Foundation

// 첫 번째 풀이
func solution1(_ n:Int) -> Int {
    let num = String(String(n, radix: 3).reversed())
    return Int(num, radix: 3)!
}

// 두 바퀴째 풀이
func solution2(_ n:Int) -> Int {
    return Int(String(String(n, radix: 3).reversed()), radix: 3)!
}

print(solution1(45))
print(solution1(125))

print(solution2(45))
print(solution2(125))
