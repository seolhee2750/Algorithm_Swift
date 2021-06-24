import Foundation
 
func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var count = 0
    var truck = truck_weights
    var w = 0
    var times = [Int]()
    var weights = [Int]()
    
    while truck.count > 0 {
        count += 1
        
        if times.count > 0 {
            if count == times.first! {
            times.removeFirst()
            w -= weights.first!
            weights.removeFirst()
        }
    }
        if w+truck.first! <= weight{
            w += truck.first!
            weights.append(truck.first!)
            times.append(count+bridge_length)
            truck.removeFirst()
        }
    }
    return times.last!
}

