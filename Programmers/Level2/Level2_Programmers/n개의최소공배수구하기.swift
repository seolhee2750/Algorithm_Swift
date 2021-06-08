import Foundation

func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1){LCM($0, $1)}
    // 0이랑 최소공배수 구해버리면 안되니까 1로 초기값 정해주고 LCM함수 돌려버리기
}

// 두 수의 최소공배수 구하는 함수
func LCM(_ n:Int, _ m:Int) -> Int {
    var gcd = 0 // 최대공약수
    var a = 0 // 입력받은 수 중에 더 큰 수
    
    // 더 큰 수를 변수 a에 넣음
    if n > m {
        a = n }
    else {
        a = m }
    
    // 최대공약수 구하는 반복문
    // 더 큰 수 a가 0이 될 때까지 1씩 -하며 n, m을 a로 나눠보다가 두 수 모두 나눠떨어질 때 종료
    while a > 0 {
        if (n%a == 0 && m%a == 0) {
            gcd = a
            break
        }
        else {
            a -= 1
        }
    }

    return n*m/gcd
}

// 입출력 예시
print(solution([2, 6, 8, 14]))
print(solution([1, 2, 3]))



