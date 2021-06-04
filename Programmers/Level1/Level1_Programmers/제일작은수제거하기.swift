import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min() // min() 사용, 배열의 제일 작은 수 찾기
    let notMinArr = arr.filter{$0 != min} // fillter 사용, 배열의 전체 원소 중 min이 아닌 원소만 찾아 새로운 배열 생성
    
    // 새로 생성한 배열이 비어있으면 [-1] 리턴, 아니면 생성된 배열 notMinArr 리턴
    print(notMinArr.isEmpty ? [-1] : notMinArr)
    return notMinArr.isEmpty ? [-1] : notMinArr
}

// 입출력 예시
solution([4, 3, 2, 1])
solution([10])
