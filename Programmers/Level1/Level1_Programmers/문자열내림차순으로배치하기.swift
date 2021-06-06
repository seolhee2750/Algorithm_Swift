import Foundation

func solution(_ s:String) -> String {
    return String(s.sorted(by: >))
}

// 입출력 예시
print(solution("Zbcdefg"))
