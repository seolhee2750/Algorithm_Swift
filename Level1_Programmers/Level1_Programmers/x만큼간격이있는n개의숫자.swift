func solution(_ x:Int, _ n:Int) -> [Int64] {
    var arr = [Int64]() // 만든 숫자들 저장 용도 배열 생성
    var k = x // 간격 의미하는 입력값 k
    var num = 0 // while문 사용 위한 변수
    
    // n개가 되기 전까지 arr 배열에 k부터 k씩 증가하며 저장
    while num < n {
        arr.append(Int64(k))
        k += x
        num += 1
    }
    
    print(arr)
    return arr
}

// 입출력 예시
solution(2, 5)
solution(4, 3)
solution(-4, 2)
