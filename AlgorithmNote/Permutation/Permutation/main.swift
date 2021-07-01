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

print(answer.map{Int(String($0))!})



