import Foundation

func solution(_ n:Int) -> Int {
    var result = 0 // 소수의 개수 담기 위한 변수
    var answer = true // 소수인지 아닌지 판별하기 위한 변수
    
    for i in 2...n {
        // 2, 3은 어차피 소수고
        // 제곱근까지 나누기 위해서 제곱근이 2보다 작은 2, 3은 따로 빼서 result에 개수를 더해주었음
        if i < 4 {
            result += 1
        }
        
        else {
            // i를 2부터 i의 제곱근까지 차례로 나눠보는 for문
            for j in 2...Int(sqrt(Double(i))) {
                // i가 한 번이라도 나눠져 떨어진다면 그 수는 소수가 아니기 때문에 바로 break
                if i % j == 0 {
                    answer = false
                    break
                }
                
                // i가 나눠져 떨어지지 않는다면 answer에 true 저장
                else {
                    answer = true
                }
            }
            
            // 반복문 종료 후 answer가 true일 경우 해당 수는 소수로 판별, result에 1 추가
            if answer == true {
                result += 1
            }
        }
    }
    
    return result
}


// 입출력 예시
print(solution(10))
print(solution(5))
