import Foundation

func solution(_ s:String) -> String {
    let upperString = Array("abcdefghijklmnopqrstuvwxyz".uppercased()) // 대문자 배열
    let lowerString = Array("abcdefghijklmnopqrstuvwxyz") // 소문자 배열
    let arr = s.components(separatedBy: " ")
    var result = [String]()

    for i in 0..<arr.count {
        for j in arr[i] {
            if upperString.contains(j) || lowerString.contains(j) {
                result.append(arr[i].capitalized)
                break
            }
            else {
                result.append(arr[i].lowercased())
                break
            }
        }
        
        if i < arr.count-1 {
            result.append(" ")
        }
    }
    
    return result.joined()
}

// 입출력 예시
print(solution("3people unFollowed me"))
print(solution("for the last week"))
