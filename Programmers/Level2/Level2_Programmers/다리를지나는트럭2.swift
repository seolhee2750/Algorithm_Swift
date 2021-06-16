// 프로그래머스 레벨2. 다리를 지나는 트럭

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var count = 0
    var bridgeWeight = 0
    var truckOnBridge = 0
    
    for i in 0..<truck_weights.count {
        if truckOnBridge < bridge_length && bridgeWeight + truck_weights[i] <= weight {
            bridgeWeight += truck_weights[i]
            truckOnBridge += 1
            if i == 0 { count += (bridge_length + 1) }
            else { count += 1 }
        }
        else {
            bridgeWeight = truck_weights[i]
            truckOnBridge = 1
            count += (bridge_length)
        }
    }

    return count
}

print(solution(2, 10, [7, 4, 5, 6]))
print(solution(100, 100, [10]))
print(solution(100, 100, [10,10,10,10,10,10,10,10,10,10]))


