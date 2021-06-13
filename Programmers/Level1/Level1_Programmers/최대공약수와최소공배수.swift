// 프로그래머스 레벨1. 최대공약수와 최소공배수
//
// 두 바퀴째 - if, else 문 훨씬 간단하게 작성했고
// while문에서 최대공약수 구할 때, 더 작은수부터 나누기 시작해서 반복 횟수가 줄었음!!
// + 첫 번째로 풀었던 풀이 다시 프로그래머스에서 돌려보니까 런타임 에러 뜨네;; 그 이후로 업데이트됐나,,

import Foundation

// 첫 번째 풀이
func solution1(_ n:Int, _ m:Int) -> [Int] {
    var max = 0 // 최대공약수
    var a = 0 // 입력받은 수 중에 더 큰 수
    
    // 더 큰 수를 변수 a에 넣음
    if n > m {
        a = n
    }
    else {
        a = m
    }
    
    // 최대공약수 구하는 반복문
    // 더 큰 수 a가 0이 될 때까지 1씩 -하며 n, m을 a로 나눠보다가 두 수 모두 나눠떨어질 때 종료
    while a > 0 {
        if (n%a == 0 && m%a == 0) {
            max = a
            break
        }
        else {
            a -= 1
        }
    }
    
    // 반복문을 통해 구한 최대공약수, 그리고 최대공약수를 이용한 최소공배수 구하는 공식을 사용하여 배열 리턴
    return [max, n*m/max]
}

// 두 바퀴째 풀이
func solution2(_ n:Int, _ m:Int) -> [Int] {
    var min = 0
    var max = 0
    
    if n > m { max = n; min = m }
    else { max = m; min = n }
    
    var gcd = min
    
    while gcd != 1 {
        if max % gcd == 0 && min % gcd == 0 {
            break
        }
        
        gcd -= 1
    }
    
    return [gcd, m*n/gcd]
}

// 입출력 예시
print(solution1(3, 12))
print(solution1(2, 5))

print(solution2(3, 12))
print(solution2(2, 5))


