// 프로그래머스 레벨2. 소수 찾기

import Foundation

func solution(_ numbers: String) -> Int {
    // 조합 구하는데 필요한 것들,,
    let inputNumbers = Array(numbers).map({Int(String($0))!})
    var result = [Int]()
    var checkList = Array(repeating: false, count: numbers.count)
    var answer = [String]()
    var r = 0
    
    // 소수 찾기 위한 배열
    var toCheckPrime = [Int]()
    
    // 조합 구하는 함수
    func PermuSolution(_ stage: Int) {
        if stage == r {
            answer.append(result.map{String($0)}.joined())
            return
        }
        else {
            for i in 0..<numbers.count {
                if checkList[i] == false {
                    checkList[i] = true
                    result[stage] = inputNumbers[i]
                    PermuSolution(stage + 1)
                    checkList[i] = false
                }
            }
        }
    }
    
    // 소수 판별 함수
    func PrimeCheck(_ count: Int) -> Int {
        var counting = count
        var isNotPrime = false
        
        for i in 0..<toCheckPrime.count {
            isNotPrime = false
            if toCheckPrime[i] < 4 {
                if toCheckPrime[i] == 2 || toCheckPrime[i] == 3 {
                    counting += 1
                }
            }
            else  {
                for j in 2...Int(sqrt(Double(toCheckPrime[i]))) {
                    if toCheckPrime[i] % j == 0 { isNotPrime = true; break }
                }
                if isNotPrime == false { counting += 1 }
            }
        }
        
        return counting
    }
    
    // 조합할 숫자의 개수 하나씩 늘리면서 조합 구하기 위한 반복문
    for i in 1...numbers.count {
        r = i
        result = Array(repeating: 0, count: r)
        
        // 조합 함수 호출
        PermuSolution(0)
        
        // 완성된 조합 중 중복을 제거하여 toCheckPrime함수에 Int형으로 저장
        if i == numbers.count {
            for j in 0..<answer.count {
                if !toCheckPrime.contains(Int(answer[j])!) { toCheckPrime.append(Int(answer[j])!) }
            }
        }
    }
    
    // 소수 함수 리턴
    return PrimeCheck(0)
}

// 입출력 예시
print(solution("17"))
print(solution("011"))
