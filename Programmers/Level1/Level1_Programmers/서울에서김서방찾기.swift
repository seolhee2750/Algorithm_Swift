import Foundation

func solution(_ seoul:[String]) -> String {
    // 배열에서 바로 위치 찾아 리턴
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다."
}

print(solution(["Jane", "Kim"]))
