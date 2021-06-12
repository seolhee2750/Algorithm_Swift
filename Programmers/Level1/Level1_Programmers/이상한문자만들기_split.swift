// 프로그래머스 레벨1. 이상한 문자 만들기
// split 이용
//
// 참고
// https://developer.apple.com/documentation/swift/string/2894564-split

import Foundation

func solution(_ s:String) -> String {
    var arr = s.split(separator: " ", omittingEmptySubsequences: false).map{String($0)}
    // 빈 시퀀스의 포함 유무를 omittingEmptySubsequences를 이용하여 선택해주어야 함.
    // split 이용 시 return 타입이 [String]이 아니라 [Substring]이기 때문에 String으로 타입캐스팅 필요
    
    for i in 0..<arr.count {
        var temp = ""
        for (j, char) in arr[i].enumerated() {
            if j % 2 == 0 {
                temp += char.uppercased()
            }
            else {
                temp += char.lowercased()
            }
        }
        arr[i] = temp
    }

    return arr.joined(separator: " ")
}

// 입출력 예시
print(solution("try hello world"))
