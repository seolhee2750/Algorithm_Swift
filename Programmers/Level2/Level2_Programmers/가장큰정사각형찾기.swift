// 프로그래머스 레벨2. 가장 큰 정사각형 찾기

import Foundation

func solution(_ board:[[Int]]) -> Int {
    var block = board
    var result = 0
    
    // 만약 주어진 행이나 열이 1일 경우엔 어차피 정사각형 넓이가 1보다 클 수 없음
    if board.count == 1 || board[0].count == 1 {
        result = 1
    }
    
    // 1행 1열부터 끝까지 반복문
    for i in 1..<board.count {
        for j in 1..<board[0].count {
            if board[i][j] == 1 {
                block[i][j] = min(block[i-1][j-1], block[i-1][j], block[i][j-1]) + 1
                result = result < block[i][j] ? block[i][j] : result
            }
        }
    }
    
    // result의 제곱 출력
    return result * result
}

// 입출력 예시
print(solution([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))
print(solution([[0,0,1,1],[1,1,1,1]]))

