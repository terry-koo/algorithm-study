//
//  5397.swift
//  BOJ
//
//  Created by 김연호 on 2022/07/04.
//
// BOJ 5397 키로거 592ms 시간이 왜이렇게 오래걸리지?
import Foundation

let loopNum = Int(readLine()!)!

for _ in 0..<loopNum {
    let input = readLine()!.map{String($0)}
    var leftStack: [String]  = []
    var rightStack: [String] = []
    
    for passWord in input {
        switch passWord {
        case "<":
            if !rightStack.isEmpty {
                leftStack.append(rightStack.popLast()!)
            }
        case ">":
            if !leftStack.isEmpty {
                rightStack.append(leftStack.popLast()!)
            }
        case "-":
            if !rightStack.isEmpty {
                rightStack.removeLast()
            }
        default:
            rightStack.append(passWord)
        }
    }
    
    let result = rightStack + leftStack.reversed()
    print(result.joined(separator:""))
}
