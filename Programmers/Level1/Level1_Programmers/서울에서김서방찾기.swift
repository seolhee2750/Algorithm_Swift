// 프로그래머스 레벨1. 서울에서 김서방 찾기
//
// 두 바퀴째 - 첫 번째에는 String 형변환 없이도 바로 \로 문자열 안에 넣었는데,, 그게 더 나은듯.

import Foundation

// 첫 번째 풀이
func solution1(_ seoul:[String]) -> String {
    // 배열에서 바로 위치 찾아 리턴
    return "김서방은 \(seoul.firstIndex(of: "Kim")!)에 있다."
}

// 두 바퀴째 플이
func solution(_ seoul:[String]) -> String {
    return "김서방은 " + String(seoul.firstIndex(of: "Kim")!) + "에 있다"
}

// 입출력 예시
print(solution1(["Jane", "Kim"]))
print(solution2(["Jane", "Kim"]))
