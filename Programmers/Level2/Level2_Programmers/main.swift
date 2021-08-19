// 프로그래머스 레벨2. 프린터
//
// 문제 그대로 FIFO로 풀어주면 되는 문제,,!!

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
  var docs = priorities // 대기열
  var now = location // 요청한 문서의 현재 위치
  var print = 0 // 출력된 문서 개수
  
    while true {
        // 대기열의 첫 번째 항목의 우선순위가 가장 높을 경우
        if docs.first! == docs.max() {
            if now == 0 { return print + 1 } // 내가 요청한 문서가 대기열 맨 앞에 위치 -> return
            else { now -= 1 } // 내가 요청한 문서 이외에 다른 문서가 출력되었다는 뜻이므로, 내 요청 문서의 위치는 한 칸 당겨주기
            
            // 출력
            docs.removeFirst()
            print += 1
        }
        
        // 대기열의 첫 번째 항목의 우선순위가 가장 높지 않을 경우
        else {
            docs.append(docs.removeFirst()) // 대기열 첫 번째 문서 삭제하고 맨 뒤로 보내기
            
            if now == 0 { now = docs.count - 1 } // 요청 문서를 대기열 맨 뒤로 이동
            else { now -= 1 } // 요청 문서 위치 한 칸 앞으로 당기기
        }
    }
}
 
// 입출력 예시
print(solution([2, 1, 3, 2], 2))
print(solution([1, 1, 9, 1, 1, 1], 0))

