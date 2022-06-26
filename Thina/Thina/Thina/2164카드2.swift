//
//  2164카드2.swift
//  Thina
//
//  Created by 유정인 on 2022/05/29.
//

import Foundation

let n = Int(readLine()!)!
var queue = [Int]()
var value = 0

for i in 1...n {
    queue.append(i)
}

if n == 1 {
    print(1)
} else {
    while !queue.isEmpty {
        queue[value] = 0
        queue.append(queue[value + 1])
        queue[value + 1] = 0
        
        if queue[queue.count - 2] == 0 {
            print(queue.last!)
            break
        }
        
        value += 2
    }
}
