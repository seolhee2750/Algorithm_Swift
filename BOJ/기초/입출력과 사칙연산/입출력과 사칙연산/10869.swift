// BOJ #10869 사칙연산

let num = readLine()!.split(separator: " ").map({Int(String($0))!})
print("\(num[0] + num[1])\n\(num[0] - num[1])\n\(num[0] * num[1])\n\(num[0] / num[1])\n\(num[0] % num[1])")
