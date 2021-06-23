// 프로그래머스 레벨1. 소수 찾기
//
// 두 바퀴째 - 첫 번째와 로직은 같은데 가독성 측면에서 더 좋아진듯?,,
//
// 세 바퀴째 - 로직은 같고, 필요없는 부분 배제하고 잘 푼듯.

import Foundation

// 첫 번째 풀이
func solution1(_ n:Int) -> Int {
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

// 두 바퀴째 풀이
func solution2(_ n:Int) -> Int {
    var result = 2
    var temp = true
    
    if n == 2 {
        return 1
    }
    else if n == 3 {
        return 2
    }
    else {
        for i in 4...n {
            for j in 2...Int(sqrt(Double(i))){
                if i % j == 0 {
                    temp = false
                    break
                }
                else {
                    temp = true
                }
            }
            if temp == true {
                result += 1
            }
        }
        return result
    }
}

// 세 바퀴째 풀이
import Foundation

func solution3(_ n:Int) -> Int {
    var count = 2
    
    if n == 2 { return 1 }
    else if n == 3 { return 2 }
    else {
        for i in 4...n {
            var isPrime = true
            for j in 2...Int(sqrt(Double(i))) {
                if i%j == 0 { isPrime = false; break }
            }
            if isPrime == true { count += 1 }
        }
    }
    return count
}


// 입출력 예시
print(solution1(10))
print(solution1(5))

print(solution2(10))
print(solution2(5))

print(solution3(10))
print(solution3(5))
