//
//  main.swift
//  Thina
//
//  Created by 유정인 on 2022/07/02.
//

import Foundation

let inputs = readLine()!.components(separatedBy: " ").map { Int($0)! }
var picks = readLine()!.components(separatedBy: " ").map { Int($0)! }

let N = inputs[0]
let M = inputs[1]

var stack = Array(1...N)
var result: Int = 0

func rotate(_ direction: Int) {
    if direction == -1 {
        stack.append(stack.removeFirst())
    } else {
        stack.insert(stack.removeLast(), at: 0)
    }
}

func find() {
    let target = picks[0]
    let targetIdx = stack.firstIndex(of: target)!
    
    if target == stack[0] {
        picks.removeFirst()
        stack.removeFirst()
    } else if targetIdx > stack.count/2 {
        rotate(1)
        result += 1
    } else {
        rotate(-1)
        result += 1
    }
}

while (!picks.isEmpty) {
    find()
}

print(result)
