// 프로그래머스 레벨1. 문자열 다루기 기본
//
// 두 바퀴째 - 나름 잘 풀었다고 생각했는데, 첫 번째 풀이가 미쳤다;
// 문자열 안에 정수가 아닌 것이 있는지 확인할 때는
// Int로 형변환 한 후, 강제추출 사용하지 않고 nil 값이 나오는지 확인하기,,, 메모,,

import Foundation

// 첫 번째 풀이
func solution1(_ s:String) -> Bool {
    // 배열 길이가 4 혹은 6일 때
    if s.count == 4 || s.count == 6 {
        // Int로 형변환 했을 때 nil이 나온다면 문자가 있다는 것,,
        if Int(s) == nil {
            return false
        }
        else {
            return true
        }
    }
    
    else {
        return false
    }
}

// 두 바퀴째 풀이
func solution2(_ s:String) -> Bool {
    var result = true
    
    if s.count == 4 || s.count == 6 {
        for i in s {
            if Array("1234567890").contains(i) {
                result = true
            }
            else {
                result = false
                break
            }
        }
        return result
    }
    
    else {
        return false
    }
}

// 입출력 예시
print(solution1("a234"))
print(solution1("1234"))

print(solution2("a234"))
print(solution2("1234"))

