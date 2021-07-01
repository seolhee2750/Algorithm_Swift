// 프로그래머스 레벨2. 소수 찾기

import Foundation

var everyNum = [Int]()
var r = 0

var count = 0
var isNotPrime = false

func Permutation(_ stage: Int, _ numberArr: [String]) {
    var checkList = Array(repeating: false, count: numberArr.count)
    var result = Array(repeating: "", count: r)
    
    if stage == r {
        everyNum.append(Int(result.joined())!)
        return
    }
    else {
        for i in 0..<numberArr.count {
            if checkList[i] == false {
                checkList[i] = true
                result[stage] = numberArr[i]
                Permutation(stage + 1, numberArr)
                checkList[i] = false
            }
        }
    }
}

func PrimeCheck() -> Int {
    for i in 0..<everyNum.count {
        if everyNum[i] < 4 {
            if everyNum[i] == 2 || everyNum[i] == 3 {
                count += 1
            }
        }
        else  {
            for j in 2...everyNum[i] {
                if everyNum[i] % j == 0 { isNotPrime = true; break }
            }
            if isNotPrime == false { count += 1 }
        }
    }
    
    return count
}

func solution(_ numbers: String) -> Int {
    let num = Array(numbers).map({String($0)})
    
    everyNum = Array(arrayLiteral: numbers).map{Int($0)!}
    
    for i in 2...num.count {
        r = i
        Permutation(0, num)
    }
    
    return PrimeCheck()
}

print(solution("17"))
print(solution("011"))
