// 꼬리 재귀로 구현한 피보나치, 일반 재귀 비교

import Foundation

func Fibo(_ n:Int) -> Int {
    if n == 0 { return 0 }
    else if n == 1 { return 1 }
    return (Fibo(n - 1) + Fibo(n - 2)) % 1234567
}

print(Fibo(3))
