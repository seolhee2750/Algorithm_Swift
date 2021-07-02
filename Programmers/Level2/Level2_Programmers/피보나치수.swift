// 프로그래머스 레벨2. 피보나치 수
//
// 두 바퀴째 풀이 - 피보나치는 재귀지! 하고 딱 풀었는데,, 시간초과ㅜ
//
// 세 바퀴째 풀이 - 첫 번째 풀이와 같음.
// 재귀함수 사용한 것 보다 코드만 보면 별루같은뎅,, 재귀는 시간복잡도가 높나부다. 이거 한번 확인해봐야겠다.

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

// 첫 번째 풀이
func solution1(_ n:Int) -> Int {
  var fibo = [0, 1] // 어차피 n은 2 이상만 입력되기 때문에 0, 1은 미리 입력하여 배열 생성
  
  // 2부터 n까지 피보나치 계산식 % 1234567 넣어주기
  for i in 2...n {
    fibo.append((fibo[i-2] + fibo[i-1]) % 1234567)
  }
  
  return fibo[n]
}

// 두 바퀴째 풀이 - 시간초과
func solution2(_ n:Int) -> Int {
    if n == 0 { return 0 }
    else if n == 1 { return 1 }
    return (solution2(n - 1) + solution2(n - 2)) % 1234567
}

// 입출력 예시
print(solution1(3))
print(solution1(5))

print(solution2(3))
print(solution2(5))
