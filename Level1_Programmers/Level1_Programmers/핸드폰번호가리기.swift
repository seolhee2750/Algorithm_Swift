import Foundation

func solution(_ phone_number:String) -> String {
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
    
    print(result)
    return result
}

solution("01033334444")
solution("027778888")
