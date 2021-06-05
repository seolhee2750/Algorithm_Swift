import Foundation

func solution(_ s:String) -> String {
    var arr = s.components(separatedBy: " ")
    // split대신 components사용했줌..

    for i in 0..<arr.count {
        var temp = ""
        for (j, char) in arr[i].enumerated() {
            if j % 2 == 0 {
                temp += char.uppercased()
            }
            else {
                temp += char.lowercased()
            }
        }
        arr[i] = temp
    }

    return arr.joined(separator: " ")
}
