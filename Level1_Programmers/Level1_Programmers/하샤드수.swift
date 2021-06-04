import Foundation

func solution(_ x:Int) -> Bool {
    let number = String(x).map{Int(String($0))!}.reduce(0, +)
    
    if x % number == 0 {
        print(true)
        return true
    }
    
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
