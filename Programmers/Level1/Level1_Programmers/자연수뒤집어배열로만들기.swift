// 프로그래머스 레벨1. 자연수 뒤집어 배열로 만들기
//
// 두 바퀴째 - 첫 번째와 똑같이 풀었음! 이게 베스트인듯
//
// 세 바퀴째 - 원래는 String 배열을 생성하고, 거기서 reversed를 해줬는데,,
// 다시 잘 보니 String을 굳이 배열로 바꾸지 않아도 reversed가 배열 타입을 반환해주는 듯 하다.
// 근데 확인해보니 정확한 반환 타입이 ReversedCollection<(__owned [Int])> 이걸로 나오는데
// 이게 정확히 어떤 것을 의미하는지,, 이해가 어렵다ㅜ 공부해봐야겠다.

import Foundation

// 첫 번째 풀이
func solution1(_ n:Int64) -> [Int] {
    return String(n).map{Int(String($0))!}.reversed()
    // String으로 값을 캐스팅하고, map 함수 사용하여 전체 String 값을 Int로 바꿔준 후 reversed
}

// 세 바퀴째 풀이
func solution3(_ n:Int64) -> [Int] {
    //return Array(String(n).reversed()).map{ Int(String($0))! }
    return String(n).reversed().map{ Int(String($0))! }
}

// 입출력 예시
print(solution1(12345))

print(solution3(12345))

