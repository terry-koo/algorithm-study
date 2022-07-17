//
//  10828스택.swift
//  Thina
//
//  Created by 유정인 on 2022/07/17.
//

import Foundation

let n = Int(readLine()!)!  // Int type
var stack: [Int] = []  // Int type array

for _ in 0..<n {  // n번의 횟수만큼 입력을 받아야함
    var inputs = readLine()?.components(separatedBy: " ")
        // Optional<Array<String>> type
    command(stack: &stack, inputs: inputs ?? [])
        // inputs가 nil인 경우 [] 빈 array 반환
}

func command(stack: inout [Int], inputs: [String]) {
    let com: String = inputs[0]
    
    switch com {
    case "push":
        if inputs.count == 2 {
            stack.append(Int(inputs[1])!)
        }
    case "pop":
        print(stack.count == 0 ? -1 : stack.removeLast())  // stack이 비어있으면 -1 출력
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? 1 : 0)
    case "top":
        print(stack.last ?? -1)
    default:
        print("default")
    }
}
