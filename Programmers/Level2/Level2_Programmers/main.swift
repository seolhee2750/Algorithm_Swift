// 프로그래머스 레벨2. 소수 찾기

import Foundation

func solution(_ numbers:String) -> Int {
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
            for i in (0..<numbers.count) {
                if checkList[i] == false {
                    checkList[i] = true
                    result[phase] = numbers[i]
                    permuDFS(phase + 1)
                    checkList[i] = false
                }
            }
        }
    }
    
    for _ in 0..<numbers.count {
        permuDFS(0)
        r += 1
    }
    
    var isNotPrime = false
    var count = 0
    
    for i in 0..<everyNum.count {
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
    
    return count
}
