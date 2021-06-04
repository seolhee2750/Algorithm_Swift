import Foundation

func solution(_ x:Int) -> Bool {
    let number = String(x).map{Int(String($0))!}.reduce(0, +) // 입력받은 수를 String으로 변환 후 map 이용하여 String 배열의 모든 String 원소들을 다시 Int로 변환, reduce 이용해서 모두 더해줌
    
    // 입력받은 수 x가 number로 나눠 떨어질 때 true 리턴
    if x % number == 0 {
        print(true)
        return true
    }
    
    // 입력받은 수 x가 number로 나눠 떨어지지 않을 때 false 리턴
    else {
        print(false)
        return false
    }
}

// 입출력 예시
solution(10)
solution(12)
solution(11)
solution(13)
