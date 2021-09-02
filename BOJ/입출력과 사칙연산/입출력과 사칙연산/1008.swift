// BOJ #1008 A/B

let num = readLine()!.split(separator: " ").map({Double(String($0))!})
print(num[0] / num[1])
