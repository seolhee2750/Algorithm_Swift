import Foundation

func solution(_ s:String) -> Bool {
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

// 입출력 예시
print(solution("a234"))
print((solution("1234")))
