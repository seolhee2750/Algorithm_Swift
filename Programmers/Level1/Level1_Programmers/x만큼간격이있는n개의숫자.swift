// 프로그래머스 레벨1. x만큼 간격이 있는 n개의 숫자
//
// 두 바퀴 째 - for문을 사용했는데, 그 부분 빼고는 다 첫 번째 풀이와 같은데,,
// 왜 for문 쓸 때는 형변환을 저렇게 더 디테일하게 해줘야되는건지;,.,.,.,

// 첫 번째 풀이
func solution1(_ x:Int, _ n:Int) -> [Int64] {
    var arr = [Int64]() // 만든 숫자들 저장 용도 배열 생성
    var k = x // 간격 의미하는 입력값 k
    var num = 0 // while문 사용 위한 변수
    
    // n개가 되기 전까지 arr 배열에 k부터 k씩 증가하며 저장
    while num < n {
        arr.append(Int64(k))
        k += x
        num += 1
    }
    
    return arr
}

// 두 바퀴 째 풀이
func solution2(_ x:Int, _ n:Int) -> [Int64] {
    var result = [Int64]()
    var num: Int64 = Int64(x)
    
    for _ in 0..<n {
        result.append(num)
        num += Int64(x)
    }
    
    return result
}

// 입출력 예시
print(solution1(2, 5))
print(solution1(4, 3))
print(solution1(-4, 2))

print(solution2(2, 5))
print(solution2(4, 3))
print(solution2(-4, 2))

