import Foundation

func solution(_ num:Int) -> Int {
    var repeatTime = 0 // 콜라츠 추측 반복 횟수 저장 변수
    var n = num // 입력 값
    
    // n이 1이 아닐 때, 짝수라면 2로 나누고 홀수라면 3을 곱하고 1을 더하는 while문
    while n != 1 {
        // 짝수일 때
        if n % 2 == 0 {
            n = n / 2
            repeatTime += 1 // 반복 횟수 추가
        }
        
        // 홀수일 때
        else {
            n = n * 3 + 1
            repeatTime += 1 // 반복 횟수 추가
        }
        
        // 누적된 반복 횟수가 500번이 됐을 경우, 반복 횟수를 -1로 초기화 후 탈출
        if repeatTime == 500 {
            repeatTime = -1
            break
        }
    }
    
    // 콜라츠 추측 성공 시 반복 횟수 출력, 500번 이상 반복 시 -1 리턴
    print(repeatTime)
    return repeatTime
}

// 입출력 예시
solution(6)
solution(16)
solution(626331)
