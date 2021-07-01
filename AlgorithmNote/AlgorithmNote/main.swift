import Foundation

func permuDFS(_ phase: Int) {
    if phase == r {
        print(result)
        return
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

let numbers = [1, 2, 3]
let r = 2

var result = [Int](repeating: 0, count: r)
var checkList = [Bool](repeating: false, count: numbers.count)

permuDFS(0)
