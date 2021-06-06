import Foundation

func solution(_ a:Int, _ b:Int) -> String {
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

print(solution(5, 24))
