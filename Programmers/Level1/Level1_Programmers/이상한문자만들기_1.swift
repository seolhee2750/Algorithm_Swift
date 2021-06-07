// components 사용하여 풀이

import Foundation

func solution(_ s:String) -> String {
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

// 입출력 예시
print(solution("try hello world"))
