// 프로그래머스 레벨2. 다음 큰 숫자
//
// 두 바퀴째 - 오랜만에 radix 사용해서,, 그 부분만 찾아보구 나머지는 다 풀 수 있었다.\
// 첫 번째와 로직은 같당.

import Foundation

// 첫 번째 풀이
func solution1(_ n:Int) -> Int
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

// 두 바퀴째 풀이
func solution2(_ n:Int) -> Int {
    var nNext = n + 1
    let nBinary_1 = String(n, radix: 2).map{$0}.filter{$0 == "1"}.count
    
    while true {
        let nNextBinary_1 = String(nNext, radix: 2).map{$0}.filter{$0 == "1"}.count
        if nNextBinary_1 == nBinary_1 { return nNext }
        else { nNext += 1 }
    }
}

// 입출력 예시
print(solution1(78))
print(solution1(15))

print(solution2(78))
print(solution2(15))
