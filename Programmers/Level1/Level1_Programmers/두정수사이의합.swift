import Foundation

func solution(_ a:Int, _ b:Int) -> Int64 {
    let largeN : Int
    let smallN : Int
    var result = 0
    
    // 큰 수 작은 수 판별
    if a > b {
        largeN = a
        smallN = b
    }
    else if b > a {
        largeN = b
        smallN = a
    }
    else {
        return Int64(a) // 두 수의 크기가 같을 때는 그냥 a값 출력
    }
    
    // 작은 값 부터 큰 값까지 차례대로 더해줌
    for i in smallN...largeN {
        result += i
    }
    
    return Int64(result)
}

// 입출력 예시
print(solution(3, 5))
print(solution(3, 3))
print(solution(5, 3))
