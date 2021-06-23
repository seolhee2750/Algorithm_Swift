// 프로그래머스 레벨1. 두 정수 사이의 합
//
// 두 바퀴째 - 한 줄로도 끝낼 수 있을 것 같아서 배열 사용해 한 줄로 풀어봤는데,
// 이렇게 저렇게 해봐도 다 테스트 하나에서 자꾸 시간초과가 뜬다ㅎ
// 그래서 다시 풀어봤다. -> solution3
// 첫 번째 풀이보다 훨씬 가독성도 좋고 효율적.
//
// 세 바퀴째 - 원래 배열로 생성해서 더해줬는데, 간결해보이지만 배열 생성 자체가 시간을 넘 많이 잡아먹어서 실패!
// 배열 안에 조건문 쓸 수 있다는거 첨 알아서,, 공부 목적으로 적어둔당.
// 그래서 다시 풀어봤는데, 원래 풀이들보다 훨씬 깔끔!!
// for문 범위에도 조건식 쓸 수 있음을 처음 알게 됐다. !!!

import Foundation

// 첫 번째 풀이
func solution1(_ a:Int, _ b:Int) -> Int64 {
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

// 두 바퀴째 풀이 - 실패
func solution2(_ a:Int, _ b:Int) -> Int64 {
    return a > b ? Int64(Array(b...a).reduce(0, +)) : Int64(Array(a...b).reduce(0, +))
}

// 두 바퀴째 풀이 - 성공
func solution3(_ a:Int, _ b:Int) -> Int64 {
    var result = 0
    
    if a > b {
        for i in b...a {
            result += i
        }
    }
    
    else {
        for i in a...b {
            result += i
        }
    }
    
    return Int64(result)
}

// 세 바퀴째 풀이 - 실패
func solution(_ a:Int, _ b:Int) -> Int64 {
    return Int64(Array(a >= b ? b...a : a...b).reduce(0, +))
}

// 세 바퀴째 풀이 - 성공
func solution(_ a:Int, _ b:Int) -> Int64 {
    var sum = 0
    for i in (a > b ? b...a : a...b) { sum += i }
    return Int64(sum)
}

// 입출력 예시
print(solution1(3, 5))
print(solution1(3, 3))
print(solution1(5, 3))

print(solution2(3, 5))
print(solution2(3, 3))
print(solution2(5, 3))

print(solution3(3, 5))
print(solution3(3, 3))
print(solution3(5, 3))
