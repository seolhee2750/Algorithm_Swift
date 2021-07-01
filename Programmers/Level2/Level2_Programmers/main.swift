import Foundation

func solution(_ numbers: String) -> Int {
    let inputNumbers = Array(numbers).map({Int(String($0))!})
    var result = [Int]()
    var checkList = Array(repeating: false, count: numbers.count)
    var answer = [String]()
    var r = 0

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
    
    var count = 0
    let toCheckPrime = answer.map({Int($0)!})
    
    func PrimeCheck() {
        var isNotPrime = false
        
        for i in 0..<toCheckPrime.count {
            if toCheckPrime[i] < 4 {
                if toCheckPrime[i] == 2 || toCheckPrime[i] == 3 {
                    count += 1
                }
            }
            else  {
                for j in 2...toCheckPrime[i] {
                    if toCheckPrime[i] % j == 0 { isNotPrime = true; break }
                }
                if isNotPrime == false { count += 1 }
            }
        }
        
        return
    }
    
    var permuIsOver = false
    
    for i in 1...numbers.count {
        r = i
        result = Array(repeating: 0, count: r)
        PermuSolution(0)
        if i == numbers.count { permuIsOver = true }
    }
    
    if permuIsOver == true { PrimeCheck() }
    
    return count
}

print(solution("17"))
print(solution("011"))

// 지금 문제가..
// 함수 안에서 위에 함수 돌고 그담에 아래 함수 돌고 또 다시 위에 함수 돌고 이딴식임. 왜이러는지 모르겠는데
// 그걸 고쳐야함..ㅜㅜ 디버깅하면서 원인을 찾아보자....
