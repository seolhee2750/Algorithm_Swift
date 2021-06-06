import Foundation

func solution(_ s:String) -> Bool
{
    var countP = 0
    var countY = 0
    
    for i in s.lowercased() {
        if i == "p" {
            countP += 1
        }
        else if i == "y" {
            countY += 1
        }
    }

    return countP == countY
}

// 입출력 예시
print(solution("pPoooyY"))
print(solution("Pyy"))
