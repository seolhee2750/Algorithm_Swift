// 프로그래머스 레벨2. 최댓값과 최솟값
//
// 두 바퀴째 - 첫 번째 풀이와 완전 같음.

import Foundation

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map({Int($0)!}) // 공백 기준 나눠서 배열로
    return String(arr.min()!) + " " + String(arr.max()!) // min, max 리턴
    // 여기서 강제추출 왜 또 해줘야되는건지,,,,,,,,,,?,,
    // --> min, max 함수는 옵셔널로 반환하기 때문에 강체추출 필수!@!@!@!
}

// 입출력 예시
print(solution("1 2 3 4"))
print(solution("-1 -2 -3 -4"))
print(solution("-1 -1"))
