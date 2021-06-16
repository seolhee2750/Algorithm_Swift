// 프로그래머스 레벨2. 다리를 지나는 트럭

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0, count: bridge_length)
    var count = 0
    var result = [Int]()
    var truck = truck_weights
     
    while result.count != truck_weights.count {
        if bridge[bridge.count-1] != 0 {
            result.append(bridge[bridge.count-1])
            bridge[bridge.count-1] = 0
        }
        for i in (0..<bridge.count-1).reversed() {
            bridge[i+1] = bridge[i]
            if i == 0 { bridge[i] = 0 }
        }
    
        if truck.count > 0 && truck[0] + bridge.reduce(0, +) <= weight {
            bridge[0] = truck[0]
            truck.removeFirst()
        }
        
        count += 1
    }

    return count
}

// 입출력 예시
print(solution(2, 10, [7, 4, 5, 6]))
print(solution(100, 100, [10]))
print(solution(100, 100, [10,10,10,10,10,10,10,10,10,10]))
