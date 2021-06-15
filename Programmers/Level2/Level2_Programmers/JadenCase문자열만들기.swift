// 프로그래머스 JadenCase 문자열 만들기
//
// 두 바퀴째 - 따로 소문자 대문자 배열도 생성하지 않았고, 두 번째보다 로직은 더 깔끔한데,
// 첫 번째 풀이에서 사용한 capitalized를 이용했으면 훨씬 좋은 풀이가 됐을 듯 하다.

import Foundation

// 첫 번째 풀이
func solution1(_ s:String) -> String {
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

// 두 바퀴째 풀이
func solution2(_ s:String) -> String {
    var str = s.components(separatedBy: " ")
    var result = [String]()
    
    for i in 0..<str.count {
        var temp = 0
        for j in str[i] {
            if temp == 0 {
                result.append(String(j.uppercased()))
            }
            else if temp > 0 {
                result.append(String(j.lowercased()))
            }
            temp += 1
        }
        if i < str.count-1 {
            result.append(" ")
        }
    }
    
    return result.joined()
}

// 입출력 예시
print(solution1("3people unFollowed me"))
print(solution1("for the last week"))

print(solution2("3people unFollowed me"))
print(solution2("for the last week"))


