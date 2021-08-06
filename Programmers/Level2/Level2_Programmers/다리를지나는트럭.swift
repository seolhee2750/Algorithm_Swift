// 프로그래머스 레벨2. 다리를 지나는 트럭
//
// 문제 풀이가.. 되게 쉬운데 어렵고 ;; 특이한 문제ㅜ 나중에 꼭 다시 한 번 풀어보자.

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var stack = Array(repeating: 0, count: bridge_length)
    var truck = truck_weights
    var sec = 0
    var now_weight = 0

    // 반복마다 트럭의 배열을 삭제
    while !stack.isEmpty {
        sec += 1
        now_weight -= stack.removeFirst()

        // 옵셔널 바인딩. 다리에 올라갈 트럭이 있을 때만 계산
        if let t = truck.first {
            if t + now_weight > weight {
                stack.append(0)
            }
            else {
                stack.append(t)
                now_weight += truck.removeFirst()
            }
        }
    }
    return sec
}

// 입출력 예시
print(solution(2, 10, [7, 4, 5, 6]))
print(solution(100, 100, [10]))
print(solution(100, 100, [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]))
