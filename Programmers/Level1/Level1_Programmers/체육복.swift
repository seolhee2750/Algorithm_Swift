// 프로그래머스 레벨1. 체육복

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var student = Array<Int>(repeating: 1, count: n)
    var result = 0
    
    // 학생 배열에서, 잃어버린 학생들의 번호에는 -1, 그리고 여분이 있는 학생들의 번호에는 +1
    for i in 0..<lost.count {
        student[lost[i]-1] -= 1
    }
    for i in 0..<reserve.count {
        student[reserve[i]-1] += 1
    }
    
    // 맨 첫 번째 학생이 체육복이 없고, 그 다음 학생이 여벌이 있을 경우
    // 그리고 맨 뒤 학생이 체육복이 없고, 그 전 학생이 여벌이 있을 경우
    // 이 두 상황만 따로 빼서 처리해주기!
    if student[0] == 0 && student[1] == 2 {
        student[0] = 1
        student[1] = 1
    }
    if student[n-1] == 0 && student[n-2] == 2 {
        student[n-1] = 1
        student[n-2] = 1
    }
    
    // 학생 수가 3명 이상일 때 for문으로 체육복 나눠주기
    // (어차피 2명일 때는 위의 if문들로 처리가 가능)
    if n > 2 {
        // student 배열의 1부터 n-2번째 까지 반복
        // 어차피 0번째, n-1번째는 위의 if문들로 처리 했음
        for i in 1..<n-1 {
            // 만약 student 배열의 i번째 학생이 0일 경우 앞, 뒤 학생이 여벌을 갖는지 확인
            if student[i] == 0 {
                // 앞 학생이 여벌 있으면 빌리기
                if student[i-1] == 2 {
                    student[i] = 1
                    student[i-1] = 1
                }
                // 앞 학생이 여벌이 없을 때, 뒤 학생이 여벌 있으면 빌리기
                else {
                    if student[i+1] == 2 {
                        student[i] = 1
                        student[i+1] = 1
                    }
                }
            }
        }
    }
    
    for i in 0..<n {
        if student[i] == 0 {
            result += 1
        }
    }
    
    return n - result
}

// 입출력 예시
print(solution(5, [2, 4], [1, 3, 5]))
print(solution(5, [2, 3], [3]))
print(solution(3, [3], [1]))
