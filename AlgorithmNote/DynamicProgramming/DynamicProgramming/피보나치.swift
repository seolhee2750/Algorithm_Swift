// 동적 계획법의 피보나치 구현

import Foundation

func Fibo(_ n: Int) -> Int {
    var memory = [0, 1]
    
    for i in 2...n {
        memory.append(memory[i - 1] + memory[i - 2])
    }

    return memory[n]
}

print(Fibo(4))
