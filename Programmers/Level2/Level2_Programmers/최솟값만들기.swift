import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    var result = 0
    let arrA = A.sorted(by: <) // 오름차순 정렬
    let arrB = B.sorted(by: >) // 내림차순 정렬
    
    for i in 0..<A.count {
        result += arrA[i] * arrB[i]
    }

    return result
}

print(solution([1, 4, 2], [5, 4, 4]))
print(solution([1, 2], [3, 4]))
