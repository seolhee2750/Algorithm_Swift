// BOJ #2588 곱셈

let num1 = Int(readLine()!)!
let num2 = readLine()!

for i in num2.reversed() { print(num1*Int(String(i))!) }
print(num1*Int(num2)!)
