// 프로그래머스 레벨1. 문자열 내 p와 y의 개수
//
// 두 바퀴째 - 첫 번째 풀이가 시간복잡도가 훨씬 좋다.!!
// 두 번째 풀이는 배열을 계속 검사해줘야해서 효율이 떨어지네ㅜ

import Foundation

// 첫 번째 풀이
func solution1(_ s:String) -> Bool
{
    var countP = 0
    var countY = 0
    
    for i in s.lowercased() {
        if i == "p" {
            countP += 1
        }
        else if i == "y" {
            countY += 1
        }
    }

    return countP == countY
}

// 두 바퀴째 풀이
func solution2(_ s:String) -> Bool
{
    var pCount = 0
    var yCount = 0
    
    for i in s {
        if Array("pP").contains(i) {
            pCount += 1
        }
        else if Array("yY").contains(i) {
            yCount += 1
        }
    }
    
    return pCount == yCount
}

// 입출력 예시
print(solution("pPoooyY"))
print(solution("Pyy"))
