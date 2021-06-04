import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

// repeating을 사용하여 한 줄마다 a개씩 *을 찍어주고, 이를 b번 반복하는 for문
for i in 0..<b {
    print(String(repeating : "*", count : a))
}

