// 프로그래머스 레벨1. 2016
//
// 두 바퀴째 - 첫 번째 풀이와 로직은 거의 같은데
// day 배열을 첫 번째 풀이처럼 그냥 FRI부터 시작하게 했으면 조금 더 효율적이었을 듯

import Foundation

func solution1(_ a:Int, _ b:Int) -> String {
    // 1월 1일이 금요일이므로, 금요일부터 배열 생성
    let days = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    // 모든 달의 일 수를 배열로 생성
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var dayCount = 0 // 해당 날짜까지의 일 수를 합산하기 위한 변수
    
    // 입력 월의 전 달까지 날 수를 누적
    for i in 0..<a-1 {
        dayCount += months[i]
    }
    
    return days[(dayCount + b - 1) % 7]
}

func solution2(_ a:Int, _ b:Int) -> String {
    var monthDay = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var day = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
    var dayCount = 0
    
    for i in 0..<a-1 {
        dayCount += monthDay[i]
    }
    
    return day[(dayCount + 5 + b - 1) % 7]
}

// 입출력 예시
print(solution1(5, 24))

print(solution2(5, 24))


