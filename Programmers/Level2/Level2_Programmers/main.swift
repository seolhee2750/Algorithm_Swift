import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var bridge = Array(repeating: 0, count: bridge_length)
    var count = 0
    var truck = truck_weights // 대기중인 트럭 보여주기 위한 배열
    var result = Array(repeating: 0, count: truck_weights.count)
    
    for i in 0..<bridge_length {
        for j in 0..<truck.count {
            if bridge.reduce(0, +) + truck[j] <= weight && truck[j] != 0 {
                if bridge[i] == 0 {
                    bridge[i] = truck[j]
                    truck[j] = 0
                }
                
                // 한 칸씩 뒤로 옮겨주는 반복문
            for k in (0..<bridge_length).reversed() {
                // bridge[k]가 마지막 자리일 때, result 배열에 해당 수를 추가해주기
                if k == bridge_length-1 && bridge[k] != 0 {
                    result.append(bridge[k])
                    bridge[k] = bridge[k-1]
                }
                else {
                    // k가 0일 때는 자리가 난 bridge[0] 자리에 0 넣어주기
                    if k == 0 {
                        bridge[k] = 0
                        break }
                    // 0이 아닐때만 다음 칸으로 옮겨주기 (0은 굳이 옮길 필요 없으므로)
                    else if k != 0 && bridge[k-1] != 0 {
                        bridge[k] = bridge[k-1] }
                }
            }
                
            count += 1 // 초 세기
            }
        }
    }
    return count
}
