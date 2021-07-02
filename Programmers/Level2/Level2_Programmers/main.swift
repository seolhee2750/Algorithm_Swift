// 프로그래머스 레벨2. 다음 큰 숫자

import Foundation

func solution(_ n:Int) -> Int
{
    let binaryNum = String(n, radix: 2) // n을 이진수로 변경
    let count1 = binaryNum.map({$0}).filter({$0 == "1"}).count // n 이진수의 1 개수
    var result = n + 1 // n보다 1 큰 자연수
    
    // result값을 이진수로 변환한 값의 1 개수가 n 이진수의 1 개수와 같을 시 break
    while String(result, radix: 2).map({$0}).filter({$0 == "1"}).count != count1 {
        result += 1
    }

    return result
}

// 입출력 예시
print(solution(78))
print(solution(15))
