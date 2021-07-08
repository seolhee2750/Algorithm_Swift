// 꼬리 재귀로 구현한 피보나치, 일반 재귀 비교

import Foundation

// 꼬리 재귀
func tailFibo(_ num: Int, _ n: Int, _ sum: Int) -> Int {
    if num == 1 { return sum }
    return tailFibo(num - 1, sum, n + sum)
}

// 일반 재귀
func Fibo(_ n: Int) -> Int {
    if n == 0 || n == 1 { return n }
    return Fibo(n - 1) + Fibo(n - 2)
}

print(tailFibo(5, 0, 1))
print(Fibo(5))
