// 참고
// https://medium.com/@jgj455/%EC%98%A4%EB%8A%98%EC%9D%98-swift-%EC%83%81%EC%8B%9D-closure-aa401f76b7ce
// https://lazyowl.tistory.com/entry/swift-Programmers-%EB%AC%B8%EC%9E%90%EC%97%B4-%EB%82%B4-%EB%A7%88%EC%9D%8C%EB%8C%80%EB%A1%9C-%EC%A0%95%EB%A0%AC%ED%95%98%EA%B8%B0?category=868952

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    // sorted, 클로저 사용!
    // 앞 문자열의 n번째 인자가 뒤 문자열의 n번째 인자와 같으면 오름차순 정렬, 아니면 그냥 n번째 인자 기준으로 오름차순 정렬
    return strings.sorted(){Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n]}
}

// 입출력 예제
print(solution(["sun", "bed", "car"], 1))
print(solution(["abce", "abcd", "cdx"], 2))
