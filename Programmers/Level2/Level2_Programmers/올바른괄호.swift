// 프로그래머스 레벨2. 올바른 괄호

import Foundation

func solution(_ s:String) -> Bool
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

// 입출력 예시
print(solution("()()"))
print(solution("(())()"))
print(solution(")()("))
print(solution("(()("))
