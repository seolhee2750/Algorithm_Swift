import Foundation

func solution(_ s:String) -> String {
    var result: String = ""
    var count = 0
    
    for i in s {
        var str = String(i)
        if str == " " {
            count = 0
        }
        else if count == 0 || count % 2 == 0 {
            str = str.uppercased()
            count += 1
        }
        else {
            str = str.lowercased()
            count += 1
        }
        
        result.append(str)
    }
    return result
}

solution("try hello world")

// 수정 필요
