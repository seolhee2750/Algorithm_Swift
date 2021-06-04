import Foundation

func solution(_ n:Int, _ m:Int) -> [Int] {
    var max = 0 // 최대공배수
    var a = 0 // 입력받은 수 중에 더 큰 수
    var b = 0 // 입력받은 수 중에 더 작은 수
    
    // 더 큰 수를 변수 a에 넣음
    if n > m {
        a = n
        b = m }
    else {
        a = m
        b = n }
    
    // 최대공배수 구하는 반복문
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
    
    // 반복문을 통해 구한 최대공배수, 그리고 최대공배수를 이용한 최대공약수 구하는 공식을 사용하여 배열 리턴
    print([max, n*m/max])
    return [max, n*m/max]
}

// 입출력 예시
solution(3, 12)
solution(2, 5)
