// 동적 계획법의 피보나치 구현

import Foundation

func Fibo(_ n: Int) -> Int {
    if n <= 1 { return n }
    return Fibo(n - 1) + Fibo(n - 2)
}
