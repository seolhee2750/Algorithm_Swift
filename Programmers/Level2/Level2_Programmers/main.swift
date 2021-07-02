import Foundation

func solution(_ numbers: String) -> Int {
    let inputNumbers = Array(numbers).map({Int(String($0))!})
    var result = [Int]()
    var checkList = Array(repeating: false, count: numbers.count)
    var answer = [String]()
    var r = 0
    var toCheckPrime = [Int]()

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
    
    func PrimeCheck(_ count: Int) -> Int {
        var counting = count
        var isNotPrime = false
        
        for i in 0..<toCheckPrime.count {
            if toCheckPrime[i] < 4 {
                if toCheckPrime[i] == 2 || toCheckPrime[i] == 3 {
                    counting += 1
                }
            }
            else  {
                for j in 2...Int(sqrt(Double(toCheckPrime[i]))) {
                    if toCheckPrime[i] % j == 0 {
                        isNotPrime = true
                        break
                    }
                }
                if isNotPrime == false {
                    counting += 1
                }
            }
        }
        
        return counting
    }
    
    for i in 1...numbers.count {
        r = i
        result = Array(repeating: 0, count: r)
        PermuSolution(0)
        if i == numbers.count { toCheckPrime = answer.map({Int($0)!}) }
    }
    
    return PrimeCheck(0)
}

// print(solution("17"))
print(solution("011"))
