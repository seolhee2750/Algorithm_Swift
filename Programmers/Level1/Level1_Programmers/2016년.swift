import Foundation

func solution(_ a:Int, _ b:Int) -> String {
    let day = ["FRI", "SAT", "SUN", "MON", "TUE", "WED", "THU"]
    // 1월 1일이 금요일 --> 금요일부터 배열 생성
    let monthDay = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    // 각 달의 날짜를 담은 배열 생성

    var daySum = 0 // a의 이전 달까지의 날 수 합산
    
    // a 전 달까지 날 수 모두 더하기
    for i in 0..<a-1 {
        daySum += monthDay[i]
    }
    
    // ((이전 달까지의 날 수 + 해당 월의 날짜) % 7) - 1
    return day[(daySum + b) % 7 - 1]
}

print(solution(5, 24))
