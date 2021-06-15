// 프로그래머스 레벨2. 카펫
//
// 갈색, 노랑의 개수를 더한 값을 1부터 나눠보며 나누어 떨어지는 수 중,
// 테두리에 한 줄만 갈색이도록 하는 문제의 요구에 부합하면 break
// (노란 부분의 넓이는 (가로 길이 - 2) * (세로 길이 - 2))
// 반복문에서는 어차피 세로의 길이가 3이상이어야 하니까 3부터 나눠주었음
// 그리고 어차피 가로의 길이가 더 길거나 같기 때문에 끝까지 나눠줄 필요 없이
// Int(sqrt(Double(sum))) 이렇게 제곱근까지로 끊어줘서 더 조금만 반복할 수 있도록 해줌

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let sum = brown + yellow
    var x = 0 // 가로 (세로보다는 김)
    var y = 0 // 세로
    
    for i in 2...(Int(sqrt(Double(sum)))) {
        if (sum % i) == 0 {
            x = sum / i
            y = i
            
            if (x - 2) * (y - 2) == yellow { break }
        }
    }
    
    return [x, y]
}

// 입출력 예시
print(solution(10, 2))
print(solution(8, 1))
print(solution(24, 24))
