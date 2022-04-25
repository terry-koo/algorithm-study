//
//  main.swift
//  9093_STACK
//
//  Created by 김연호 on 2022/04/17.
//

import Foundation
//input forcountnum
let forcnt = Int(readLine()!)!
var Str_reverse : String

for _ in 0..<forcnt {
    
    Str_reverse = " "
    //input string
    let text = readLine()!.split(separator:" ")
    //for-in 과 foreach 의 차이점
    //foreach는 반복하고 싶은 구문을 foreach라는 함수의 파라미터로 클로저로 작성해 넘겨줌
    text.forEach {
        Str_reverse.append($0.reversed() + " ")
    }
    print(Str_reverse)
    
}

