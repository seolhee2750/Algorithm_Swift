// 프로그래머스 레벨1. 이상한 문자 만들기
//
// components 사용하여 풀이
//
// 두 바퀴째 - 첫 번째 풀이보다 가독성도 좋고 로직도 이게 더 나은듯!!
//
// 세 바퀴째 - 두 번째 풀이와 거의 동일

import Foundation

// 첫 번째 풀이
func solution1(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")

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

// 두 바퀴째 풀이
func solution2(_ s:String) -> String {
    var result = ""
    var count = 0
    
    for i in s {
        if i == " " {
            result.append(" ")
            count = 0
        }
        else {
            count % 2 == 0 ? result.append(String(i.uppercased())) : result.append(String(i))
            count += 1
        }
    }
    return result
}

// 입출력 예시
print(solution1("try hello world"))

print(solution2("try hello world"))
