// 프로그래머스 레벨2. 가장 큰 정사각형 찾기
//
// 두 바퀴째 - 첫 번째 풀이 로직이 기억이 나서,, 생각하며 풀었다.
// 근데 첫 번째 풀이에서 첫 번째 if문을 보면, 모든 원소가 0 일때를 고려해주지 않았다.
// 문제에도 그 부분은 제시되어있지 않고, 다행히(?) 테스트케이스에 해당 케이스가 없어서 정답으로 통과됐던 듯 하다.
// 두 번째 풀이에서는 그 부분까지 예외처리 해서 풀어주었다. 나머지 로직은 거의 같다.

import Foundation

func solution1(_ board:[[Int]]) -> Int {
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

// 두 바퀴째 풀이
func solution2(_ board:[[Int]]) -> Int
{
    var result = board
    var answer = 0
    
    if board.count == 1 || board[0].count == 1 {
        if board.flatMap{$0}.max()! == 1 { return 1 }
        else { return 0 }
    }
    
    for i in 0..<board.count-1 {
        for j in 0..<board[0].count-1 {
            if result[i][j] >= 1 && result[i+1][j+1] == 1 {
                result[i+1][j+1] += min(result[i][j], result[i+1][j], result[i][j+1])
                if result[i+1][j+1] > answer { answer = result[i+1][j+1] }
            }
        }
    }

    return answer * answer
}

// 입출력 예시
print(solution1([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))
print(solution1([[0,0,1,1],[1,1,1,1]]))

print(solution2([[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]))
print(solution2([[0,0,1,1],[1,1,1,1]]))
