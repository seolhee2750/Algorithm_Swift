// 프로그래머스 레벨1. 모의고사
//
// 나머지 연산 사용, 학생 별 패턴이 저장된 배열 안에서 답을 체크해주었음
//
// 두 바퀴째 - 로직은 아예 같고, 코드도 거의 같지만 훨씬 깔끔하게 잘 작성한듯.

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

// 두 바퀴째 풀이
func solution(_ answers:[Int]) -> [Int] {
    let supo1 = [1, 2, 3, 4, 5]
    let supo2 = [2, 1, 2, 3, 2, 4, 2, 5]
    let supo3 = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    var stu = [0, 0, 0]
    var res = [Int]()
    
    for i in 0..<answers.count {
        if answers[i]==supo1[i%5] { stu[0] += 1 }
        if answers[i]==supo2[i%8] { stu[1] += 1 }
        if answers[i]==supo3[i%10] { stu[2] += 1 }
    }
    
    for i in 0..<stu.count { if stu[i] == stu.max()! { res.append(i+1) } }
    
    return res
}

print(solution([1, 2, 3, 4, 5]))
print(solution([1, 3, 2, 4, 2]))
