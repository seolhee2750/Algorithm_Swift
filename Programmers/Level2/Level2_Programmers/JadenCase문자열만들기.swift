import Foundation

func solution(_ s:String) -> String {
    let upperString = Array("abcdefghijklmnopqrstuvwxyz".uppercased()) // 대문자 배열
    let lowerString = Array("abcdefghijklmnopqrstuvwxyz") // 소문자 배열
    let arr = s.components(separatedBy: " ") // 주어진 배열을 공백 기준으로 나눈 배열
    var result = [String]()

    for i in 0..<arr.count {
        for j in arr[i] {
            // 알파벳일 때
            if upperString.contains(j) || lowerString.contains(j) {
                result.append(arr[i].capitalized) // 대문자로 바꿔주기
                break // 바로 탈출
            }
            
            // 알파벳 아닐 때
            else {
                result.append(arr[i].lowercased()) // 전부 소문자로 바꿔주기
                break // 바로 탈출
            }
        }
        
        // 배열의 마지막 단어 전까지는 한 단어마다 배열에 공백 추가해주기
        if i < arr.count-1 {
            result.append(" ")
        }
    }
    
    return result.joined()
}

// 입출력 예시
print(solution("3people unFollowed me"))
print(solution("for the last week"))
