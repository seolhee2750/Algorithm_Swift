// 프로그래머스 레벨1. 모의고사
//
// 나머지 연산 사용, 학생 별 패턴이 저장된 배열 안에서 답을 체크해주었음

func solution(_ answers:[Int]) -> [Int] {
    let stu1 = [1, 2, 3, 4, 5]
    let stu2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let stu3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var count = [0, 0, 0]
    var result = [Int]()
    
    for i in 0..<answers.count {
        if answers[i] == stu1[i % 5] {
            count[0] += 1
        }
        if answers[i] == stu2[i % 8] {
            count[1] += 1
        }
        if answers[i] == stu3[i % 10] {
            count[2] += 1
        }
    }
    
    for i in 0..<3 {
        if count.max() == count[i] {
            result.append(i+1)
        }
    }
    
    return result.sorted()
}

print(solution([1, 2, 3, 4, 5]))
print(solution([1, 3, 2, 4, 2]))
