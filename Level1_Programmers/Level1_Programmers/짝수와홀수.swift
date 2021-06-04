import Foundation

func solution(_ num:Int) -> String {
    // 2로 나눈 나머지가 0인지 아닌지에 따라 짝/홀 판별
    print(num % 2 == 0 ? "Even" : "Odd")
    return num % 2 == 0 ? "Even" : "Odd"
}

// 입출력 예시
solution(3)
solution(4)
