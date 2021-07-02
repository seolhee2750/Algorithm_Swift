// 조합 구하고, 중복 제거된 Int 배열 출력

import Foundation

let numbers = [0, 1, 1, 1]
var result = [Int]()
var checkList = Array(repeating: false, count: numbers.count)
var answer = [String]()
var r = 0
var toCheckPrime = [Int]()

for i in 1...numbers.count {
    r = i
    result = Array(repeating: 0, count: r)
    PermuSolution(0)
    if i == numbers.count {
        for j in 0..<answer.count {
            if !toCheckPrime.contains(Int(answer[j])!) { toCheckPrime.append(Int(answer[j])!) }
        }
    }
}

func PermuSolution(_ stage: Int){
    if stage == r {
        answer.append(result.map{String($0)}.joined())
        return
    }
    else {
        for i in 0..<numbers.count {
            if checkList[i] == false {
                checkList[i] = true
                result[stage] = numbers[i]
                PermuSolution(stage + 1)
                checkList[i] = false
            }
        }
    }
}

print(answer.map{Int(String($0))!})
print(toCheckPrime)



