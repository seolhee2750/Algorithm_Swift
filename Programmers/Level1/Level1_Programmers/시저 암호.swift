// 프로그래머스 레벨1. 시저 암호
//
// 첫 번째 풀이 참고
// https://lazyowl.tistory.com/entry/Swift-Programmers-%EC%8B%9C%EC%A0%80%EC%95%94%ED%98%B8
//
// 두 바퀴째 - 실패; 내일 다시 해보자...


import Foundation

func solution(_ s:String, _ n:Int) -> String {
    let upperString = Array("abcdefghijklmnopqrstuvwxyz".uppercased()) // 대문자 배열
    let lowerString = Array("abcdefghijklmnopqrstuvwxyz") // 소문자 배열
    let inputString = Array(s) // 주어진 문자열 배열
    var result = "" // 결과 저장용 변수 선언
   
    // 주어진 문자열에 대해서 대문자인지, 소문자인지 판별 후
    // 대문자, 혹은 소문자 배열에서 해당 문자의 위치를 찾아 n만큼 이동한 위치로 옮긴 위치의 문자를 출력
    for i in inputString {
        // 주어진 문자열의 i번째 문자가 대문자 배열에 포함되었을 경우
        if upperString.contains(i) {
            // 대문자 배열에서 해당 문자의 위치를 찾고, 그 위치에 n을 더한 값을 저장
            var indexNum = upperString.firstIndex(of: i)! + n
            
            // 저장된 위치가 25보다 클 경우, 26을 빼줌으로써 다시 처음부터 위치를 찾을 수 있도록 설정
            if indexNum > 25 {
                indexNum = indexNum - 26
            }

            // 대문자 배열에서 찾은 위치의 문자를 result 배열에 추가
            result.append(upperString[indexNum])
        }
        
        // 주어진 문자열의 i번째 문자가 소문자 배열에 포함되었을 경우
        else if lowerString.contains(i) {
            var indexNum = lowerString.firstIndex(of: i)! + n
            
            if indexNum > 25 {
                indexNum = indexNum - 26
            }
            
            result.append(lowerString[indexNum])
        }
        
        // 주어진 문자열의 i번째 문자가 공백일 경우
        else {
            // 그대로 공백 문자를 result 배열에 추가
            result.append(i)
        }
    }
    
    return result
}

// 입출력 예시
print(solution1("AB", 1))
print(solution1("z", 1))
print(solution1("a B z", 4))
