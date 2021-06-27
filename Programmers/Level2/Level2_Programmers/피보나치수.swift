// 프로그래머스 레벨2. 피보나치 수

import Foundation

//func solution(_ n:Int) -> Int {
//    var fibo = [0, 1]
//
//    for i in 2...n {
//        fibo.append(fibo[i-2] + fibo[i-1])
//    }
//
//    return (fibo[n] % 1234567)
//}
// --> % 연산을 나중에 하게 되면 배열에 들어가는 값들이 너무 커서 범위를 벗어나서 오류..!!!!

func solution(_ n:Int) -> Int {
  var fibo = [0, 1] // 어차피 n은 2 이상만 입력되기 때문에 0, 1은 미리 입력하여 배열 생성
  
    // 2부터 n까지 피보나치 계산식 % 1234567 넣어주기
  for i in 2...n {
    fibo.append((fibo[i-2] + fibo[i-1]) % 1234567)
  }
  
  return fibo[n]
}

// 입출력 예시
print(solution(3))
print(solution(5))
