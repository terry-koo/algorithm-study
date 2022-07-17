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

var count = Array(repeating: 0, count: inputs.max()!)

for i in 0..<n {
    count[inputs[i]-1] += 1

}

for i in 0..<n {
    while !stack.isEmpty && count[inputs[stack.last!]-1] < count[inputs[i]-1] {
        inputs[stack.removeLast()] = inputs[i]
        
    }
    stack.append(i)
    
}

for i in stack {
    inputs[i] = -1
    
}

print(inputs.map { String($0) }.joined(separator: " "))
