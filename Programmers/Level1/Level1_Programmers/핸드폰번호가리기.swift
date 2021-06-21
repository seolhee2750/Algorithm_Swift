// 프로그래머스 레벨1. 핸드폰 번호 가리기
//
// 두 바퀴째 - 훨씬 깔끔해져따! suffix랑 prefix랑 정리해야겠다,,,.
//
// 세 바퀴째 - 굳이 suffix 사용하지 않아도 충분히 깔끔하게 풀었다,!!! 어차피 배열 생성하는건 같으니 시간복잡도도 괜찮을듯.!

import Foundation

// 첫 번째 풀이
func solution1(_ phone_number:String) -> String {
    var arr = [String]() // *를 찍기 위한 배열 생성
    var phoneNumCount = phone_number.count // 입력받은 번호의 길이
    
    // (번호 길이 - 4)가 0이 되기 전까지 arr 배열에 *를 찍어주는 while문
    while (phoneNumCount - 4 > 0){
        arr.append("*")
        phoneNumCount -= 1
    }
    // 피드백 : 이렇게 while문 사용할 필요 없이 repeating 사용하면 더 효율적일 듯
    // String(repeating : "*", count : a)

    let result:String = arr.joined() + phone_number.suffix(4) // arr로 만든 * 찍힌 배열의 원소들을 모두 합치고, 그 뒤에 처음 입력받은 번호 배열의 맨 뒤 4자리 수를 더해 String으로 받음
    
    return result
}

// 두 바퀴째 풀이
func solution2(_ phone_number:String) -> String {
    var result = [String]()
    
    result.append(String(repeating: "*", count: phone_number.count-4))
    return result.joined() + phone_number.suffix(4)
}

// 세 바퀴째 풀이
func solution3(_ phone_number:String) -> String {
    var arr = Array(phone_number)
    for i in 0..<phone_number.count-4 { arr[i] = "*" }
    return String(arr)
}

// 입출력 예시
print(solution1("01033334444"))
print(solution1("027778888"))

print(solution2("01033334444"))
print(solution2("027778888"))

print(solution3("01033334444"))
print(solution3("027778888"))


