//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/05/18.
//

import Foundation

let n = Int(readLine()!)!
var inputs = readLine()!.split(separator: " ").map { Int(String($0))! }
var stack = [Int]()

for i in 0..<inputs.count {
    while !stack.isEmpty && inputs[stack.last!] < inputs[i] {
        inputs[stack.removeLast()] = inputs[i]
        
    }
    stack.append(i)
    
}

for i in stack {
    inputs[i] = -1
    
}

print(inputs.map { String($0) }.joined(separator: " "))
