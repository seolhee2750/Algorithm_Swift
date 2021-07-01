// 순열 기본 로직

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

let numbers = [1, 2, 3] // 입력 예시
let r = 2 // 몇 개의 숫자를 뽑아 조합을 만들건지 !!

var result = [Int](repeating: 0, count: r) // 조합된 숫자를 담을 배열
var checkList = [Bool](repeating: false, count: numbers.count) // 조합을 위한 체크리스트

permuDFS(0) // 실행문
