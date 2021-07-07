// 재귀함수의 대표적인 예시로 팩토리얼 함수 구현

import Foundation

func Factorial(_ num: Int) -> Int {
    if num < 2 { return num }
    return Factorial(num-1) * num
}

print(Factorial(3)) // 6
print(Factorial(5)) // 120



