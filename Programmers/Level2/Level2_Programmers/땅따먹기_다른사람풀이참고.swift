// 프로그래머스 다른 사람 풀이 참고
//
/* 이전 행의 최댓값이 있는 열을 4로 나눈 나머지에 해당하는 현재 행의 열 중에서 최댓값을 구함.
이렇게 하면 굳이 이전 행의 최댓값이 존재하는 열의 위치를 찾고, 그걸 빼줄 필요 없이
이전 행에서 선택한 열과 겹치지 않는 열 중에서만 최댓값을 찾아 더해줄 수 있다. */
//
/* answer 배열의 0번째 인덱스는 land 배열에서 land[0][0]을 선택,
 그에 맞춰 나머지 행에서 최댓값들을 선택하는 것,,!!! */

import Foundation

func solution(_ land:[[Int]]) -> Int {
    var answer = [0,0,0,0]
    
    for row in land {
        let tmp = answer
        for col in 0..<4 {
            answer[col % 4] = row[col % 4] + max(tmp[(col + 1) % 4], tmp[(col + 2) % 4], tmp[(col + 3) % 4])
        }
    }
    
    return answer.max()!
}

// 입출력 예시
print(solution([[1,2,3,5],[5,6,7,8],[4,3,2,1]]))

