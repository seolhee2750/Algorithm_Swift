// 프로그래머스 레벨2. 소수 찾기

import Foundation

func solution(_ numbers:String) -> Int {
    let numArr = Array(numbers).map({String($0)})
    var r = 1
    var result = [String](repeating: "", count: numbers.count)
    var checkList = [Bool](repeating: false, count: numbers.count)
    var everyNum = [String]()
    
    func permuDFS(_ phase: Int) {
        if phase == r {
            if everyNum.contains(result.map({String($0)}).joined()) { return }
            else { everyNum.append(result.map({String($0)}).joined()); return }
        }
        else {
            for i in (0..<numArr.count) {
                if checkList[i] == false {
                    checkList[i] = true
                    result[phase] = numArr[i]
                    permuDFS(phase + 1)
                    checkList[i] = false
                }
            }
        }
    }
    
    for _ in 0..<numArr.count {
        permuDFS(0)
        r += 1
    }
    
    var isNotPrime = false
    var count = 0
    
    for i in 0..<everyNum.count {
        if Int(everyNum[i])! < 4 {
            if everyNum[i] == "2" { count += 1 }
            if everyNum[i] == "3" { count += 1 }
        }
        else {
            for j in 2..<Int(everyNum[i])! {
                if i % j == 0 {
                    isNotPrime = true
                    break
                }
            }
            if isNotPrime {
                count += 1
                isNotPrime = false
            }
        }
    }
    
    return count
}

print(solution("17"))
print(solution("011"))
