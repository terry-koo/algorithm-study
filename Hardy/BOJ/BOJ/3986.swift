//
//  main.swift
//  BOJ
//
//  Created by 김연호 on 2022/06/29.
// 3986 좋은단어 40ms

import Foundation

let loopNum = Int(readLine()!)! //입력 할 반복 숫자 입력
var stack : [Character] = []
var result : Int = 0

for _ in 0..<loopNum {
    stack = []//forloop 돌떄 마다 스택 초기화
    let input = readLine()!
    
    for char in input {
        if let top = stack.last, top == char {
            stack.removeLast() //들어오는 값과 스택의 top과 같으면 top을 빼줌
        } else {
            stack.append(char) // 그렇지 않으면 스택에 넣어줌
        }
    }
    
    if stack.isEmpty {//연산 결과 후 스택이 비어있으면 result ++
        result += 1
    }
}

print(result)
