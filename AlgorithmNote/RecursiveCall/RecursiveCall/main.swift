import Foundation

func Factorial(_ num: Int) -> Int {
    if num < 2 { return num }
    return Factorial(num-1) * num
}

print(Factorial(3)) // 6
print(Factorial(5)) // 120



