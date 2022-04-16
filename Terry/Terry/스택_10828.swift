//
//  main.swift
//  Terry
//
//  Created by Terry Koo on 2022/04/15.
//

import Foundation

let n = Int(readLine()!)!  // 명령의 줄 수
var stack: [Int] = [] // stack으로 사용할 배열


for _ in 0..<n{
    let inputs = readLine()?.components(separatedBy: " ")
    command(stack: &stack,inputs: inputs ?? [])
}

func command( stack: inout [Int], inputs: [String]){
    var com: String = inputs[0]
    
    switch com{
    case "push":
        if inputs.count == 2{
            stack.append(Int(inputs[1])!)
        }
    case "pop":
        print(stack.count == 0 ? -1 : stack.removeLast())
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
