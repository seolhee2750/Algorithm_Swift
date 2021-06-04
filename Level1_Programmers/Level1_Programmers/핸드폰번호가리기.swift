//
//  main.swift
//  Level1_Programmers
//
//  Created by 설희pc on 2021/06/03.
//

import Foundation

func solution(_ phone_number:String) -> String {
    var arr = [String]()
    var phoneNumCount = phone_number.count
    
    while (phoneNumCount - 4 > 0){
        arr.append("*")
        phoneNumCount -= 1
    }
    
    let result:String = arr.joined() + phone_number.suffix(4)
    
    print(result)
    
    return result
}

solution("01033334444")
solution("027778888")
