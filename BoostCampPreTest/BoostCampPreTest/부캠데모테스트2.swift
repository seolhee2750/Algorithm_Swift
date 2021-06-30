// 2차 데모테스트
//
// 1차와 같은 문제가 나왔당,,
// 문제 풀이 로직도 아주 같게 풀었는데, 이번엔 filter를 사용해줬다.
// 저번에도 바로 filter를 사용해야겠다는 점은 캐치를 했는데,
// 배열 안에서 중복을 검사하는거를 filter로 하는게 갑자기 왜이렇게 생각이 안나던지
// 그래서 저번엔 조금 다른 방법으로 검사를 해줬었다.
// 이번엔 filter를 사용해서 풀기 성공!

import Foundation

func solution(_ v: [[Int]]) -> [Int]
{
    var xArr = [Int]()
    var yArr = [Int]()
    var result = [0, 0]
    
    for i in 0..<v.count {
        xArr.append(v[i][0])
        yArr.append(v[i][1])
    }
    
    for i in 0..<xArr.count {
        if xArr.filter({$0 == xArr[i]}).count == 1 { result[0] = xArr[i] }
        if yArr.filter({$0 == yArr[i]}).count == 1 { result[1] = yArr[i] }
    }
    
    return result
}

// 입출력 예시
print(solution([[1, 4], [3, 4], [3, 10]]))
print(solution([[1, 1], [2, 2], [1, 2]]))
