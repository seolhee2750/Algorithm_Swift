// 프로그래머스 레벨2. 올바른 괄호
//
// 두 바퀴째 - 어려움 없이 풀 수 있었다. 글구 더 깔끔해짐 

import Foundation

// 첫 번째 풀이
func solution1(_ s:String) -> Bool
{
    var sum = 0
    
    for i in s {
        if i == "(" {
            sum += 1
        }
        else {
            sum += -1
        }
        
        // (의 개수보다 )의 개수가 많아지는 순간 바로 false
        if sum < 0 {
            break
        }
    }

    return sum == 0 ? true : false
}

// 두 바퀴째 풀이
func solution2(_ s:String) -> Bool {
    var sum = 0
    
    for i in s {
        if i == "(" { sum += 1 }
        else { sum -= 1 }
        if sum < 0 { return false }
    }

    return sum != 0 ? false : true
}

// 입출력 예시
print(solution1("()()"))
print(solution1("(())()"))
print(solution1(")()("))
print(solution1("(()("))

print(solution2("()()"))
print(solution2("(())()"))
print(solution2(")()("))
print(solution2("(()("))
