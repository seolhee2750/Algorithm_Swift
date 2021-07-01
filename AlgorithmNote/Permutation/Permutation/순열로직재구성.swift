// 순열 기본 로직 - 재구성
//
// 개수에 상관 없이, 주어진 숫자의 모든 조합을 구하는 함수를 구현해보자!@@

import Foundation

let numbers = [1, 2, 3, 4]
var result = [Int]()
var checkList = Array(repeating: false, count: numbers.count)
var answer = [String]()
var r = 0

for i in 1...numbers.count {
    r = i
    result = Array(repeating: 0, count: r)
    PermuSolution(0)
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

print(answer)


