// 꼬리 재귀로 구현한 팩토리얼, 일반 재귀 비교

import Foundation

// 꼬리 재귀
func tailRecursion(_ x: Int, _ fac: Int) -> Int {
    if x == 1 { return fac }
    return tailRecursion(x-1, x * fac)
}

// 일반 재귀
func Recursion(_ x: Int) -> Int {
    if x == 1 { return 1 }
    return x * Recursion(x-1)
}

print(tailRecursion(3, 1))
print(Recursion(3))
