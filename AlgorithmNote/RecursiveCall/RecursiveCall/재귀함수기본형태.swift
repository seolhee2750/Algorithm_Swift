// 재귀 함수의 기본 형태

import Foundation

func recursiveCall(_ num: Int) -> Int {
    if num < 2 { return num } // 예외
    return recursiveCall(num-1) // 메인 식
}
