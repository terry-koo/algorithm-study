//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/06/26.
//

import Foundation

var N = Int(readLine()!)!
var stack = [Character]()

var goodCount: Int = 0

for _ in 0..<N {
    stack = []
    let word = readLine()!
    
    for i in word {
        if let top = stack.last, top == i {
            stack.removeLast()
        } else {
            stack.append(i)
        }
    }
    
    if stack.isEmpty {
        goodCount += 1
    }
}

print(goodCount)
