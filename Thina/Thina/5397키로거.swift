//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/07/17.
//

import Foundation

let testCase = Int(readLine()!)!

for _ in 1...testCase {
    let input = readLine()!
    var leftStack: [String] = []
    var rightStack: [String] = []
    
    for i in input {
        if i == "<" {
            if leftStack.isEmpty == false {
                rightStack.append(leftStack.popLast()!)
            }
        } else if i == ">" {
            if rightStack.isEmpty == false {
                leftStack.append(rightStack.popLast()!)
            }
        } else if i == "-" {
            if leftStack.isEmpty == false {
                leftStack.popLast()
            }
        } else {
            leftStack.append(String(i)) // type of i : Character
        }
    }
    rightStack.reverse()
    leftStack.append(contentsOf: rightStack)
    print(leftStack.joined(separator: ""))
}
